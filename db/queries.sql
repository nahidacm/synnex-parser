# SELECT ff.Manufacturer_Part_number as sku,ff.SKU_ATTRIBUTES,ff.SYNNEX_SKU_number,
#        ic.ProductGallery as base_image
# from icecat_data as ic
#        left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
#        left join inv_report_without_0_qty as inv on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
# where ic.ErrorMessage = '' and ff.SKU_ATTRIBUTES like '_Y_';
select SYNNEX_SKU_number,Manufacturer_Part_number from flat_file;