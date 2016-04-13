json.array!(@attended_events) do |attended_event|
  json.extract! attended_event, :id, :user_id, :event_id
  json.url attended_event_url(attended_event, format: :json)
end
