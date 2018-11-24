class CreateAddFieldsToDrugstores < ActiveRecord::Migration[5.2]
  def change
    create_table :add_fields_to_drugstores do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :number

      t.timestamps
    end
  end
end
