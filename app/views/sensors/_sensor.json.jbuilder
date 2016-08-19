json.extract! sensor, :id, :modelo, :marca, :quantidade, :localizacao, :created_at, :updated_at
json.url sensor_url(sensor, format: :json)