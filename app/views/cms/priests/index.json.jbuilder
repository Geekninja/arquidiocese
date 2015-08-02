json.array!(@cms_priests) do |cms_priest|
  json.extract! cms_priest, :id, :who, :publish, :content, :resume, :title, :thumb, :thumb_active
  json.url cms_priest_url(cms_priest, format: :json)
end
