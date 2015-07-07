json.array!(@cms_pages) do |cms_page|
  json.extract! cms_page, :id, :title, :resume, :content, :date, :publish, :thumb, :thumb_active, :page_category_id
  json.url cms_page_url(cms_page, format: :json)
end
