class CheckoutController < ApplicationController
  def index
    @drugstore_medicine = DrugstoreMedicine.find(params[:id])
  end

  def done
  end
end
