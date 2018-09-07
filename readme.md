**An PHP command line tool to parse Synnex data**

**Sample Command:**

`./console.php filter:category '/home/nhd/temp-files/synnex/523323.ap' '002057240,002057245,002057246,002057247,002057249,002057253,002057446,002057447,002057448,002057509,002057530,002057542,002057659,002057660,002057661,002057682,002057694' '/home/nhd/temp-files/synnex/processed-files/flat-file-laptop.csv' ','`

**Direct import app file**

Add an empty column at the beginning of the file. That column represents auto increment id.
 
 `truncate table flat_file;`
 
`LOAD DATA LOCAL INFILE '/home/nhd/temp-files/synnex/523323.ap'  INTO TABLE flat_file  FIELDS TERMINATED BY '~'  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;`

**IceCat file import**

`truncate table icecat_data;`

`LOAD DATA LOCAL INFILE '/home/nhd/Downloads/87073_EN.csv' INTO TABLE icecat_desktop CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;`

`SHOW WARNINGS;`

**Image Downloader**

`git clone git@github.com:nahidacm/batch-file-downloader.git`

`cd batch-file-downloader`

`composer install`

`php ./console.php downloader:download /var/www/cli-apps/batch-file-downloader/sample-input.csv /home/nhd/Pictures/mobile-and-gadgets`

Create an CSV file only with image urls like `icecat-images.csv` if there is multiple images in single row, they must be pipe(|) separated.

`php ./console.php icecat:image:download  /var/www/synnex-app/icecat-images.csv /var/www/synnex-app/ice-images/`


**Direct import Amazon Stock file**

Add an empty column at the beginning of the file. That column represents auto increment id.

`LOAD DATA LOCAL INFILE '/home/nhd/Downloads/amazon-products.csv'  INTO TABLE amazon_products  FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;`

**Direct import Synnex Stock file**

`truncate table inv_report_without_0_qty;`

`LOAD DATA LOCAL INFILE '/home/nhd/temp-files/synnex/stock/inv_report_without_0_qty.app'  INTO TABLE inv_report_without_0_qty  FIELDS TERMINATED BY '~'  ENCLOSED BY '"' LINES TERMINATED BY '\n';`