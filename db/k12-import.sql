SELECT ff.Manufacturer_Part_number as sku,'Laptops' as attribute_set, 'simple' as type,ic.ProductTitle as name,
 ic.ProductTitle as name_first_line,'' as spec_second_line, ic.LongDesc as description,ic.ShortDesc as short_description,
 'New' as `condition`,
 ic.Supplier as manufacturer, ic.Model as model, 'Laptop' as notebook_type,ic.ProductFamily as processor, ic.Processor_frequency as processor_speed,
 ic.Maximum_internal_memory as notebook_memory, concat(ic.Total_storage_capacity,ic.Storage_media) as hard_drive_type,
 ic.Display_diagonal as screen_size, ic.Optical_drive_type optical_drive_type, ic.Operating_system_installed as operating_system,
 ic.Number_of_battery_cells as battery_size, concat(replace(ic.Weight,' kg','')*2.20462, ' lbs') as weight,
 '1 Year Warranty' as warranty, ff.Contract_Price_With_Promo_Rebate*1.2 as price, 'Catalogue/Laptops' as categories,
 replace(ic.HighPic,'http://','') as image,replace(ic.HighPic,'http://','') as small_image,replace(ic.HighPic,'http://','') as thumbnail,
 replace(ic.HighPic,'http://','') as media_gallery, '1' as rfd_available, '1' as rfq_available, inv.Qty_on_Hand_Total as qty,'1' as is_in_stock,
 '0' as manage_stock, '1' as status, 'Catalog, Search' as visibility, 'None' as tax_class_id
from icecat_data as ic
       left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
       left join inv_report_without_0_qty as inv on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ic.ErrorMessage = '';