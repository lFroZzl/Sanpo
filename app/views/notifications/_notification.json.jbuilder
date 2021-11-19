json.extract! notification, :id, :event_link, :created_at, :updated_at
json.url notification_url(notification, format: :json)
