class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  def my_medicines
    @doctor_prescriptions = DoctorPrescription.where(patient: current_patient) #.pluck(:medicine_id).uniq
    # @drugstore_medicines = DrugstoreMedicine.where(medicine_id: my_medicines_ids)
  end

  def index
    @patients = Patient.all
    respond_with(@patients)
  end

  def show
    respond_with(@patient)
  end

  def new
    @patient = Patient.new
    respond_with(@patient)
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    respond_with(@patient)
  end

  def update
    @patient.update(patient_params)
    respond_with(@patient)
  end

  def destroy
    @patient.destroy
    respond_with(@patient)
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:name, :email, :phone, :cep)
    end
end
