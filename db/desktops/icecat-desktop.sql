select concat(ff.SYNNEX_SKU_number,'-SNX') as product_id, ff.Manufacturer_Part_number, ff.Manufacturer_Name,ff.UPC_Code
from flat_file as ff
left join inv_report_without_0_qty as inv
on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ff.SYNNEX_CAT_Code in (
2026446,
2026448,
2026659,
2026660,
2026661,
2026682,
2317659,
2317660,
2317661,
2507448,
2507659,
2507660,
2507661,
2508448,
2508659,
2508660,
2508661
)
and inv.Qty_on_Hand_Total > 0;;