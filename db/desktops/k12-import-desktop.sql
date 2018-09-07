SELECT concat(ff.Manufacturer_Part_number,'-',ic.Icecat_id) as sku,'Desktops' as attribute_set, 'simple' as type,ic.ProductTitle as name,
 ic.ProductTitle as name_first_line,'' as spec_second_line, ic.LongDesc as description,ic.ShortDesc as short_description,
 TRUNCATE(ff.Contract_Price_With_Promo_Rebate*1.2,2) as price, 'New' as `condition`,
 ic.Supplier as manufacturer, ic.Model as model,'' as form_factor, ic.Processor_family as processor, ic.Processor_frequency as processor_speed,
 ic.Maximum_internal_memory as memory, concat(ic.Total_storage_capacity,' ',ic.Storage_media) as hard_drive_type,
 ic.Optical_drive_type optical_drive_type, ic.Operating_system_installed as operating_system, ic.Onboard_graphics_adapter_model as graphics_type,
 TRUNCATE(replace(ic.Weight,' kg','')*2.20462,2) as weight,'1 Year Warranty' as warranty, 'Catalogue/Desktops' as categories,
 replace(ic.HighPic,'http://','') as image,replace(ic.HighPic,'http://','') as small_image,replace(ic.HighPic,'http://','') as thumbnail,
 replace(ic.HighPic,'http://','') as media_gallery, '1' as rfd_available, '1' as rfq_available, inv.Qty_on_Hand_Total as qty,'1' as is_in_stock,
 '0' as manage_stock, '1' as status, 'Catalog, Search' as visibility, 'None' as tax_class_id

from icecat_desktop as ic
       left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
       left join inv_report_without_0_qty as inv on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ic.ErrorMessage = '' and ic.Processor_family <> '';