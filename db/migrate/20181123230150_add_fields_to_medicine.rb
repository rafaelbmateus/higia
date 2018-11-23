class AddFieldsToMedicine < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :how_use, :string
    add_column :medicines, :effect, :string
    add_column :medicines, :indications, :string
  end
end
