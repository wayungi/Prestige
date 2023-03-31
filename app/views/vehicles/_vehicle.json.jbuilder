json.extract! vehicle, :id, :name, :image, :drive_fee, :purchase_fee, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
