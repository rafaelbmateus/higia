class DrugstoreMedicinesController < ApplicationController
  before_action :set_drugstore_medicine, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @drugstore_medicines = DrugstoreMedicine.all
    respond_with(@drugstore_medicines)
  end

  def show
    respond_with(@drugstore_medicine)
  end

  def new
    @drugstore_medicine = DrugstoreMedicine.new
    respond_with(@drugstore_medicine)
  end

  def edit
  end

  def create
    @drugstore_medicine = DrugstoreMedicine.new(drugstore_medicine_params)
    @drugstore_medicine.save
    respond_with(@drugstore_medicine)
  end

  def update
    @drugstore_medicine.update(drugstore_medicine_params)
    respond_with(@drugstore_medicine)
  end

  def destroy
    @drugstore_medicine.destroy
    respond_with(@drugstore_medicine)
  end

  private
    def set_drugstore_medicine
      @drugstore_medicine = DrugstoreMedicine.find(params[:id])
    end

    def drugstore_medicine_params
      params.require(:drugstore_medicine).permit(:medicine_id, :price, :promotion)
    end
end
