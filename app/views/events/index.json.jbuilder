json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :event_date, :event_time, :valid, :image, :link
  json.url event_url(event, format: :json)
end
