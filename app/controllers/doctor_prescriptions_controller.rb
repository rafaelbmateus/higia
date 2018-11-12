class DoctorPrescriptionsController < ApplicationController
  before_action :set_doctor_prescription, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @doctor_prescriptions = DoctorPrescription.all
    respond_with(@doctor_prescriptions)
  end

  def show
    respond_with(@doctor_prescription)
  end

  def new
    @doctor_prescription = DoctorPrescription.new
    respond_with(@doctor_prescription)
  end

  def edit
  end

  def create
    @doctor_prescription = DoctorPrescription.new(doctor_prescription_params)
    @doctor_prescription.save
    respond_with(@doctor_prescription)
  end

  def update
    @doctor_prescription.update(doctor_prescription_params)
    respond_with(@doctor_prescription)
  end

  def destroy
    @doctor_prescription.destroy
    respond_with(@doctor_prescription)
  end

  private
    def set_doctor_prescription
      @doctor_prescription = DoctorPrescription.find(params[:id])
    end

    def doctor_prescription_params
      params.require(:doctor_prescription).permit(:doctor_id, :patient_id, :medicine_id, :dosage, :description)
    end
end
