**An PHP command line tool to parse Synnex data**

**Sample Command:**

`./console.php filter:category '/home/nhd/temp-files/synnex/523323.ap' '002057240,002057245,002057246,002057247,002057249,002057253,002057446,002057447,002057448,002057509,002057530,002057542,002057659,002057660,002057661,002057682,002057694' '/home/nhd/temp-files/synnex/processed-files/flat-file-laptop.csv' ','`

**Direct import app file**
`LOAD DATA LOCAL INFILE '/home/nhd/temp-files/synnex/523323.ap'  INTO TABLE flat_file  FIELDS TERMINATED BY '~'  ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;`