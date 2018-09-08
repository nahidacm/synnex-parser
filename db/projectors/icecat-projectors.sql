select concat(ff.SYNNEX_SKU_number,'-SNX') as product_id, ff.Manufacturer_Part_number, ff.Manufacturer_Name,ff.UPC_Code
from flat_file as ff
where ff.SYNNEX_CAT_Code in (
5093182,
5093221,
5093239,
547582000,
547583000
)
and ff.Qty_on_Hand_Total > 0;