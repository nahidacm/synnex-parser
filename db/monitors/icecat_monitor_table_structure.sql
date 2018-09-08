-- auto-generated definition
create table icecat_monitor
(
  id                                                   int auto_increment
    primary key,
  Requested_prod_id                                    varchar(511)  null,
  Requested_GTINEANUPC                                 varchar(255)  null,
  Requested_Icecat_id                                  varchar(255)  null,
  ErrorMessage                                         varchar(511)  null,
  Supplier                                             varchar(127)  null,
  Prod_id                                              varchar(255)  null,
  Icecat_id                                            varchar(255)  null,
  GTINEANUPC                                           text          null,
  Category                                             varchar(511)  null,
  CatId                                                varchar(255)  null,
  ProductFamily                                        varchar(511)  null,
  ProductSeries                                        varchar(511)  null,
  Model                                                varchar(511)  null,
  Updated                                              varchar(511)  null,
  Quality                                              varchar(255)  null,
  On_Market                                            varchar(255)  null,
  Product_Views                                        varchar(255)  null,
  HighPic                                              varchar(511)  null,
  HighPic_Resolution                                   varchar(255)  null,
  LowPic                                               varchar(511)  null,
  Pic500x500                                           varchar(511)  null,
  ThumbPic                                             varchar(511)  null,
  Folder_PDF                                           text          null,
  Folder_Manual_PDF                                    text          null,
  ProductTitle                                         varchar(1023) null,
  ShortDesc                                            text          null,
  ShortSummaryDescription                              text          null,
  LongSummaryDescription                               text          null,
  LongDesc                                             text          null,
  Short_Marketing_Text                                 text          null,
  SEO_Title                                            varchar(1023) null,
  SEO_Description                                      text          null,
  SEO_Keywords                                         varchar(511)  null,
  ProductGallery                                       text          null,
  ProductGallery_Resolution                            varchar(1023) null,
  Display varchar(16) null,
  Display_diagonal varchar(256) null,
  Aspect_ratio varchar(256) null,
  Contrast_ratio_dynamic varchar(256) null,
  Colour_of_product varchar(128) null,
  Response_time varchar(128) null
);

