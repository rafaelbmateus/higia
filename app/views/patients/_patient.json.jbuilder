json.extract! patient, :id, :name, :email, :phone, :cep, :created_at, :updated_at
json.url patient_url(patient, format: :json)
