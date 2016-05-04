json.array!(@foods) do |food|
  json.extract! food, :id, :item
  json.url food_url(food, format: :json)
end
