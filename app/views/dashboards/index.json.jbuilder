json.array!(@dashboards) do |dashboard|
  json.extract! dashboard, :id, :owner_type, :owner_id
  json.url dashboard_url(dashboard, format: :json)
end
