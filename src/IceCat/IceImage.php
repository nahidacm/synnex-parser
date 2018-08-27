<?php

namespace IceCat;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;

class IceImage extends Command{

    protected function configure(){
        $this->setName("icecat:image:download")
            ->setDescription("Downloads images from IceCat csv to local. arguments: full file path")
            ->addArgument('file_path', InputArgument::REQUIRED, 'File name and path')
            ->addArgument('destination_folder', InputArgument::REQUIRED, 'Destination folder path');
    }

    protected function execute(InputInterface $input, OutputInterface $output){

        $file_path = $input->getArgument('file_path');
        $destination_folder = $input->getArgument('destination_folder');
        try{
            $handle = fopen($file_path, "r");
            $row = 1;
            $rowCountSection = $output->section();

            while (($row_data = fgetcsv($handle, 99999999, ",")) !== FALSE) {

                $ProductGallery = $row_data[0];
                $images = explode('|',$ProductGallery);
                foreach ($images as $image_link){
                    $output->writeln('Downloading: '.$image_link);

                    $split_image = pathinfo($image_link);
                    $image_dir = str_ireplace('http://','',str_ireplace('https://','',$split_image['dirname']));

                    $ch = curl_init();
                    curl_setopt($ch, CURLOPT_URL , $image_link);
                    curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13");
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                    $response= curl_exec ($ch);
                    curl_close($ch);
                    $img_file_dir = $destination_folder.'/'.$image_dir;
                    if (!is_dir($img_file_dir))
                    {
                        mkdir($img_file_dir, 0777, true);
                    }
                    $file_name = $img_file_dir.'/'.$split_image['filename'].'.'.$split_image['extension'];
                    $file = fopen($file_name , 'w') or die("X_x");
                    fwrite($file, $response);
                    fclose($file);
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

}