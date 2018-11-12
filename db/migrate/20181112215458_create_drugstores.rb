class CreateDrugstores < ActiveRecord::Migration[5.2]
  def change
    create_table :drugstores do |t|
      t.string :name
      t.string :phone
      t.integer :cep

      t.timestamps
    end
  end
end
