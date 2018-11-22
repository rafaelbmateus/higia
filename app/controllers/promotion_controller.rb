class PromotionController < ApplicationController
  def index
    @drugstore_medicines = DrugstoreMedicine.where('drugstore_medicines.promotion_price IS NOT NULL')
  end
end