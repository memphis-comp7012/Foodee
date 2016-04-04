json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :score
  json.url comment_url(comment, format: :json)
end
