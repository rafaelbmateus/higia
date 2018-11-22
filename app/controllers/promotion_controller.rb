class PromotionController < ApplicationController
  def index
    @drugstore_medicines = DrugstoreMedicine.where('promotion_price IS NOT NULL')
  end
end