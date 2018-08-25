<?php

namespace Synnex;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Formatter\OutputFormatterStyle;
use Synnex\CsvParser;

class IceCatImport extends Command{

    protected function configure(){
        $this->setName("icecat:import")
            ->setDescription("Imports IceCat file to DB. arguments: full file path")
            ->addArgument('file_path', InputArgument::REQUIRED, 'File name and path');
    }

    protected function execute(InputInterface $input, OutputInterface $output){

        $parser = new CsvParser($output);
        $flat_file = $input->getArgument('flat_file');
        $category_ids = $input->getArgument('category_ids');
        $output_file = $input->getArgument('output_file');
        $output_delimeter = $input->getArgument('output_delimeter');

        $result = $parser->parseCsv($flat_file,$category_ids,$output_file,$output_delimeter);

        $output->writeln('Parser result: ' . $result);
    }

}