json.array!(@cms_post_categories) do |cms_post_category|
  json.extract! cms_post_category, :id, :name, :status, :description
  json.url cms_post_category_url(cms_post_category, format: :json)
end
