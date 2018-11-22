class AddDrugstoreToDrugstoreMedicines < ActiveRecord::Migration[5.2]
  def change
    add_reference :drugstore_medicines, :drugstore, foreign_key: true
  end
end
