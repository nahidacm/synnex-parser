<?php

namespace Synnex;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Formatter\OutputFormatterStyle;
use Synnex\CsvParser;

class FlatFileFilter extends Command{

    protected function configure(){
        $this->setName("filter:category")
            ->setDescription("Outputs subset of the flat file filtered with provided category ids. arguments: flat_file category_ids output_file output_delimeter")
            ->addArgument('flat_file', InputArgument::REQUIRED, 'Flat file name and path')
            ->addArgument('category_ids', InputArgument::REQUIRED, 'Comma seperated category ids, empty string ("") to skip this filter')
            ->addArgument('output_file', InputArgument::REQUIRED, 'Output file name and path')
            ->addArgument('output_delimeter', InputArgument::REQUIRED, 'Output file CSV delimeter');
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