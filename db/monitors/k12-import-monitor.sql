  SELECT concat(ff.Manufacturer_Part_number,'-',ic.Icecat_id) as sku,'Monitors' as attribute_set, 'simple' as type,ic.ProductTitle as name,
 ic.LongDesc as description,ic.ShortDesc as short_description,'New' as `condition`,ic.Supplier as manufacturer,ic.Model as model,
 ic.Display as screen_type, ic.Display_diagonal as display_size, ic.Aspect_ratio as aspect_ratio, '' as monitor_native_resolution,
 ic.Contrast_ratio_dynamic as contrast_ratio, ic.Colour_of_product as color, ic.Response_time as response_time, '' as ports,
 '' as weight,'1 Year Warranty' as warranty,
 TRUNCATE(ff.Contract_Price_With_Promo_Rebate*1.2,2) as price, 'Catalogue/Monitors' as categories,
 replace(ic.HighPic,'http://','') as image,replace(ic.HighPic,'http://','') as small_image,replace(ic.HighPic,'http://','') as thumbnail,
 replace(ic.HighPic,'http://','') as media_gallery, '1' as rfd_available, '1' as rfq_available, inv.Qty_on_Hand_Total as qty,'1' as is_in_stock,
 '0' as manage_stock, '1' as status, 'Catalog, Search' as visibility, 'None' as tax_class_id

from icecat_monitor as ic
       left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
       left join inv_report_without_0_qty as inv on ff.SYNNEX_SKU_number = inv.SYNNEX_SKU_number
where ic.ErrorMessage = '';