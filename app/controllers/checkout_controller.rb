class CheckoutController < ApplicationController
  def index
    @medicine = Medicine.find(params[:id])
  end

  def done
  end
end
