rails g scaffold cms::post title resume:text content:text date:date publish:boolean slider:boolean thumb thumb_active:boolean post_category:references
rails g scaffold cms::page title resume:text content:text date:date publish:boolean thumb thumb_active:boolean page_category:references
rails g scaffold cms::page_category name status:boolean description
rails g scaffold cms::post_category name status:boolean description
rails g scaffold cms::parish name phone address priest content:text publish:boolean thumb thumbnail thumbnail_active:boolean resume:text
rails g scaffold cms::priest who:integer publish:boolean content:text resume:text title thumb thumb_active:boolean
