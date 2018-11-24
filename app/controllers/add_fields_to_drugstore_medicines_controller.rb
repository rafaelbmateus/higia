class AddFieldsToDrugstoreMedicinesController < ApplicationController
  before_action :set_add_fields_to_drugstore_medicine, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @add_fields_to_drugstore_medicines = AddFieldsToDrugstoreMedicine.all
    respond_with(@add_fields_to_drugstore_medicines)
  end

  def show
    respond_with(@add_fields_to_drugstore_medicine)
  end

  def new
    @add_fields_to_drugstore_medicine = AddFieldsToDrugstoreMedicine.new
    respond_with(@add_fields_to_drugstore_medicine)
  end

  def edit
  end

  def create
    @add_fields_to_drugstore_medicine = AddFieldsToDrugstoreMedicine.new(add_fields_to_drugstore_medicine_params)
    @add_fields_to_drugstore_medicine.save
    respond_with(@add_fields_to_drugstore_medicine)
  end

  def update
    @add_fields_to_drugstore_medicine.update(add_fields_to_drugstore_medicine_params)
    respond_with(@add_fields_to_drugstore_medicine)
  end

  def destroy
    @add_fields_to_drugstore_medicine.destroy
    respond_with(@add_fields_to_drugstore_medicine)
  end

  private
    def set_add_fields_to_drugstore_medicine
      @add_fields_to_drugstore_medicine = AddFieldsToDrugstoreMedicine.find(params[:id])
    end

    def add_fields_to_drugstore_medicine_params
      params.require(:add_fields_to_drugstore_medicine).permit(:street, :city, :state, :number)
    end
end
