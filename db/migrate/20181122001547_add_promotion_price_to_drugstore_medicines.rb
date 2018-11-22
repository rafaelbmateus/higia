class AddPromotionPriceToDrugstoreMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :drugstore_medicines, :promotion_price, :decimal
  end
end
