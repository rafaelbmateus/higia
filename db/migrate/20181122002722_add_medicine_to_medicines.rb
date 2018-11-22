class AddMedicineToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :medicine, :string
  end
end