<?php

namespace IceCat;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;

class IceCatImport extends Command{

    protected function configure(){
        $this->setName("icecat:import")
            ->setDescription("Imports IceCat file to DB. arguments: full file path")
            ->addArgument('file_path', InputArgument::REQUIRED, 'File name and path');
    }

    protected function execute(InputInterface $input, OutputInterface $output){

        $conn = mysqli_connect("localhost","nhd","j","synnex");

        if (mysqli_connect_errno())
        {
            $output->writeln("Failed to connect to MySQL: " . mysqli_connect_error());
            exit();
        }

        $file_path = $input->getArgument('file_path');
        try{
            $handle = fopen($file_path, "r");
            $row = 1;
            $rowCountSection = $output->section();
            $table_name = 'icecat_data';
            while (($row_data = fgetcsv($handle, 99999999, ",")) !== FALSE) {
                $escaped_values = $this->cleanRow($row_data,$conn);// array_map('mysqli_real_escape_string', array_values($row_data));
                $values  = implode(", ", $escaped_values);
                $sql = "INSERT INTO $table_name VALUES ($values)";

                if ($conn->query($sql) === TRUE) {
                    $output->writeln("Inserted row: $row");
                } else {
                    $output->writeln($conn->error);
                }

                $rowCountSection->overwrite('Row Count: '.$row);
                $row++;
            }
            fclose($handle);
        }catch (\Exception $e){
            $output->writeln($e->getMessage());
        }
        $output->writeln('Done');
    }
    public function cleanRow($row_data,$conn){
        foreach ($row_data as $index=>$value){
            $escaped_value = mysqli_real_escape_string($conn,$value);
            if(empty($escaped_value)){
                $row_data[$index] = null;
            }
            elseif(is_integer($escaped_value) || strlen($escaped_value) < 5){

            }else{
                $row_data[$index] = "'".mysqli_real_escape_string($conn,$value)."'";
            }
        }
//        print_r($row_data);die;
        return $row_data;
    }

}