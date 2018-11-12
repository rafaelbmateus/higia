class CreateDoctorPrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_prescriptions do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.references :medicine, foreign_key: true
      t.string :dosage
      t.text :description

      t.timestamps
    end
  end
end
