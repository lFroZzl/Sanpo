json.extract! event, :id, :title, :age_range, :note, :start_date, :end_date, :participant, :created_at, :updated_at
json.url event_url(event, format: :json)
