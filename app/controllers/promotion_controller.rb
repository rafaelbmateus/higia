class PromotionController < ApplicationController
  def index
    @drugstore_medicines = DrugstoreMedicine.all #where.not(promotion_price: nil)
  end
end
