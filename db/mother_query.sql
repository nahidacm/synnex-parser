SELECT ff.SYNNEX_SKU_number,ff.Manufacturer_Part_number,
       TRUNCATE((ff.Unit_Cost_w_o_Promo_Rebate+(ff.Unit_Cost_w_o_Promo_Rebate*0.1)+15)*1.35,2) as Our_Cost,
       ff.SKU_ATTRIBUTES,
       CONCAT(ff.Long_Description_1,ff.Long_Description_2,ff.Long_Description_3) as description,
       ff.Unit_Cost_w_o_Promo_Rebate,ff.MSRP,
       TRUNCATE(ff.MSRP - (ff.Unit_Cost_w_o_Promo_Rebate+(ff.Unit_Cost_w_o_Promo_Rebate*0.1)+15),2) as Possible_Profit,
       ff.UPC_Code,ff.UNSPSC_Code,
       ff.Part_Description,ff.Manufacturer_Name,
       ff.Qty_on_Hand_Total as FF_Qty, inv.Qty_on_Hand_Total as Inv_Qty
from flat_file as ff
LEFT JOIN inv_report_without_0_qty as inv
         on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where inv.SYNNEX_CAT_Code in (002057659,002057660,002057661)
  /*and inv.Qty_on_Hand_Total > 5*/ and ff.SYNNEX_SKU_number = '5306796'
    /*and ff.UPC_Code <> ''*/
/*HAVING Possible_Profit > 100*/
order by Possible_Profit DESC;