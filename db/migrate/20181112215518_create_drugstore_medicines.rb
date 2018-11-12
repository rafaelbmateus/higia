class CreateDrugstoreMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :drugstore_medicines do |t|
      t.references :medicine, foreign_key: true
      t.decimal :price
      t.boolean :promotion

      t.timestamps
    end
  end
end
