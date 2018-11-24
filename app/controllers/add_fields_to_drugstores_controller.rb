class AddFieldsToDrugstoresController < ApplicationController
  before_action :set_add_fields_to_drugstore, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @add_fields_to_drugstores = AddFieldsToDrugstore.all
    respond_with(@add_fields_to_drugstores)
  end

  def show
    respond_with(@add_fields_to_drugstore)
  end

  def new
    @add_fields_to_drugstore = AddFieldsToDrugstore.new
    respond_with(@add_fields_to_drugstore)
  end

  def edit
  end

  def create
    @add_fields_to_drugstore = AddFieldsToDrugstore.new(add_fields_to_drugstore_params)
    @add_fields_to_drugstore.save
    respond_with(@add_fields_to_drugstore)
  end

  def update
    @add_fields_to_drugstore.update(add_fields_to_drugstore_params)
    respond_with(@add_fields_to_drugstore)
  end

  def destroy
    @add_fields_to_drugstore.destroy
    respond_with(@add_fields_to_drugstore)
  end

  private
    def set_add_fields_to_drugstore
      @add_fields_to_drugstore = AddFieldsToDrugstore.find(params[:id])
    end

    def add_fields_to_drugstore_params
      params.require(:add_fields_to_drugstore).permit(:street, :city, :state, :number)
    end
end
