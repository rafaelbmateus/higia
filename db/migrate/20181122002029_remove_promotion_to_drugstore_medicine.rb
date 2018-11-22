class RemovePromotionToDrugstoreMedicine < ActiveRecord::Migration[5.2]
  def change
    remove_column :drugstore_medicines, :promotion
  end
end
