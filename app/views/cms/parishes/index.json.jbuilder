json.array!(@cms_parishes) do |cms_parish|
  json.extract! cms_parish, :id, :name, :phone, :address, :priest, :content, :publish, :thumb, :thumbnail, :thumbnail_active, :resume
  json.url cms_parish_url(cms_parish, format: :json)
end
