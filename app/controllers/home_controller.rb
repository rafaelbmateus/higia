class HomeController < ApplicationController
  def index
    if patient_signed_in?
      render :patient
    elsif doctor_signed_in?
      render :doctor
    end
  end
end