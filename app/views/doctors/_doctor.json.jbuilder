json.extract! doctor, :id, :name, :email, :phone, :hospital_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
