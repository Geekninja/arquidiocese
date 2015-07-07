json.array!(@cms_page_categories) do |cms_page_category|
  json.extract! cms_page_category, :id, :name, :status, :description
  json.url cms_page_category_url(cms_page_category, format: :json)
end
