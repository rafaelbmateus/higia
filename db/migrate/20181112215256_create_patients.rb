class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.integer :cep

      t.timestamps
    end
  end
end
