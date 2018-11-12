json.extract! doctor_prescription, :id, :doctor_id, :patient_id, :medicine_id, :dosage, :description, :created_at, :updated_at
json.url doctor_prescription_url(doctor_prescription, format: :json)
