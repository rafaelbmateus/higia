class AddFieldToDrugstore < ActiveRecord::Migration[5.2]
  def change
    add_column :drugstores, :street, :string
    add_column :drugstores, :city, :string
    add_column :drugstores, :state, :string
    add_column :drugstores, :number, :integer
  end
end
