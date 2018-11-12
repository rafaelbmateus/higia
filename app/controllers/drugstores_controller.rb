class DrugstoresController < ApplicationController
  before_action :set_drugstore, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @drugstores = Drugstore.all
    respond_with(@drugstores)
  end

  def show
    respond_with(@drugstore)
  end

  def new
    @drugstore = Drugstore.new
    respond_with(@drugstore)
  end

  def edit
  end

  def create
    @drugstore = Drugstore.new(drugstore_params)
    @drugstore.save
    respond_with(@drugstore)
  end

  def update
    @drugstore.update(drugstore_params)
    respond_with(@drugstore)
  end

  def destroy
    @drugstore.destroy
    respond_with(@drugstore)
  end

  private
    def set_drugstore
      @drugstore = Drugstore.find(params[:id])
    end

    def drugstore_params
      params.require(:drugstore).permit(:name, :phone, :cep)
    end
end
