<?php
/**
 * Created by PhpStorm.
 * User: nhd
 * Date: 7/27/18
 * Time: 9:38 PM
 */
namespace Synnex;

use Symfony\Component\Console\Output\OutputInterface;
use Synnex\HeaderMap;

class CsvParser
{
    protected $_output;
    public function __construct(OutputInterface $output)
    {
        $this->_output = $output;
    }

    public function parseCsv($flat_file,$category_ids,$output_file,$output_delimeter){

        $category_array = explode(',',$category_ids);
        try{
            $handle = fopen($flat_file, "r");
            $output_handle = fopen($output_file,'w+');
            $row = 1;
            $matched_row_count = 0;
            $rowCountSection = $this->_output->section();
            $matchedRowCountSection = $this->_output->section();
            fputcsv($output_handle,HeaderMap::$headerMap);
            while (($row_data = fgetcsv($handle, 99999999, "~")) !== FALSE) {
                if(empty($category_array)){
                    fputcsv($output_handle,$row_data);
                    $matchedRowCountSection->overwrite('Matched Row Count: '.++$matched_row_count);
                }elseif (array_search($row_data[HeaderMap::CATEGORY_COLUMN],$category_array) !== false){
                    fputcsv($output_handle,$row_data);
                    $matchedRowCountSection->overwrite('Matched Row Count: '.++$matched_row_count);
                }
                $rowCountSection->overwrite('Row Count: '.$row);
                $row++;
            }
            fclose($handle);
            fclose($output_handle);
        }catch (\Exception $e){
            return $e->getMessage();
        }

        return "Total row processed: $row";
    }
}