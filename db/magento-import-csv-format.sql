SELECT concat(ff.Manufacturer_Part_number,'-',ff.SYNNEX_SKU_number) as sku,'default' as store_view_code,
       'Computer' as attribute_set_code,'simple' as product_type,'Default Category/Laptop' as categories,
 concat(ic.ProductTitle,' (',ff.Manufacturer_Part_number,')') as name,ic.LongDesc as description,
       ic.ShortDesc as short_description,ic.LongSummaryDescription as full_spec,
 replace(ic.Weight,' kg','') as weight,'1' as product_online, ic.Width as ts_dimensions_width,
       ic.Height as ts_dimensions_height, ic.Depth as ts_dimensions_length,
 'Catalog, Search' as visibility, ff.Contract_Price_With_Promo_Rebate*1.1 as price, inv.Qty_on_Hand_Total as qty,
 replace(ic.HighPic,'http://','') as base_image,replace(ic.HighPic,'http://','') as small_image,
       replace(ic.HighPic,'http://','') as thumbnail_image,
       replace(replace(ic.ProductGallery,'|',','),'http://','') as additional_images,
 '1' as is_in_stock, ic.Processor_family as processor_family,
 ic.Processor_frequency as processor_frequency, ic.Supplier as brand, ic.ProductFamily as product_family,
       ic.Display_diagonal as screen_size,
 ic.Maximum_internal_memory as memory, ic.Total_storage_capacity as storage_capacity,ic.Storage_media as storage_media,
 ic.Optical_drive_type optical_drive, ic.Operating_system_installed as operating_system,
       concat(ic.Number_of_battery_cells,' Cells') as battery,
 ff.SYNNEX_SKU_number as synnex_sku, ic.Icecat_id as icecat_id
from icecat_data as ic
       left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
       left join inv_report_without_0_qty as inv on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ic.ErrorMessage = '';