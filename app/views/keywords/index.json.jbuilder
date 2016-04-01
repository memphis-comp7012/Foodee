json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :tag
  json.url keyword_url(keyword, format: :json)
end
