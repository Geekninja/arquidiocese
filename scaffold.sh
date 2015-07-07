rails g scaffold cms::post title resume content date:date publish:boolean slider:boolean thumb thumb_active:boolean post_category:references
rails g scaffold cms::page title resume content date:date publish:boolean thumb thumb_active:boolean page_category:references
rails g scaffold cms::page_category name status:boolean description
rails g scaffold cms::post_category name status:boolean description
