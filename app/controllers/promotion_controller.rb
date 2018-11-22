class PromotionController < ApplicationController
  def index
    @drugstore_medicines = DrugstoreMedicine.where.not(promotion_price: nil)
  end
end
