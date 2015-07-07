json.array!(@cms_posts) do |cms_post|
  json.extract! cms_post, :id, :title, :resume, :content, :date, :publish, :slider, :thumb, :thumb_active, :post_category_id
  json.url cms_post_url(cms_post, format: :json)
end
