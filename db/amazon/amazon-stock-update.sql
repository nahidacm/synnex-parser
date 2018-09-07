SELECT ap.amazon_sku,ap.ASIN,ap.synnex_id as synnex_sku,ff.Manufacturer_Part_number,ap.price as old_price,
(ff.Contract_Price_With_Promo_Rebate - ap.price) as price_change,ff.Contract_Price_With_Promo_Rebate as new_price,
ap.quantity as old_qty,(ap.quantity - inv.Qty_on_Hand_Total) as qty_change,inv.Qty_on_Hand_Total as new_qty,ap.title
from amazon_products as ap
left join flat_file as ff on ap.synnex_id = ff.SYNNEX_SKU_number
left join inv_report_without_0_qty as inv on ap.synnex_id = inv.SYNNEX_SKU_number;