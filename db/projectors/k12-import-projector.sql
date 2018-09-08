  SELECT concat(ff.Manufacturer_Part_number,'-',ic.Icecat_id) as sku,'Projectors' as attribute_set, 'simple' as type,ic.ProductTitle as name,
 ic.LongDesc as description,ic.ShortDesc as short_description,concat(ic.Projection_technology,' ','projector') as projector_type,
ic.Supplier as manufacturer,ic.Model as model, ic.Projector_brightness as projector_brightness, ic.Projector_native_resolution as native_resolution,
ic.Native_aspect_ratio as aspect_ratio, ic.Contrast_ratio_typical as contrast_ratio, ic.display_resolution as display_resolution, TRUNCATE(replace(ic.Weight,' kg','')*2.20462,2) as weight,
'1 Year Warranty' as warranty, TRUNCATE(ff.Contract_Price_With_Promo_Rebate*1.2,2) as price, 'Catalogue/Audio Visual' as categories,
 replace(ic.HighPic,'http://','') as image,replace(ic.HighPic,'http://','') as small_image,replace(ic.HighPic,'http://','') as thumbnail,
 replace(ic.HighPic,'http://','') as media_gallery, '1' as rfd_available, '1' as rfq_available, ff.Qty_on_Hand_Total as qty,'1' as is_in_stock,
 '0' as manage_stock, '1' as status, 'Catalog, Search' as visibility, 'None' as tax_class_id

from icecat_projector as ic
       left join flat_file as ff on ic.Requested_prod_id = ff.Manufacturer_Part_number
where ic.ErrorMessage = '';