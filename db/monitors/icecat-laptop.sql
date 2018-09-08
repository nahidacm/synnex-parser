select concat(ff.SYNNEX_SKU_number,'-SNX') as product_id, ff.Manufacturer_Part_number, ff.Manufacturer_Name,ff.UPC_Code
from flat_file as ff
left join inv_report_without_0_qty as inv
on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ff.SYNNEX_CAT_Code in (
5038123,
5038126,
5038130,
5038131,
5038649,
5038708,
5038709,
5078000,
5510239,
5510511,
5510512,
5510710,
551616000,
551617000
)
and inv.Qty_on_Hand_Total > 0;