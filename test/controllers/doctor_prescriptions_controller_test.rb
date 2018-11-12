require 'test_helper'

class DoctorPrescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_prescription = doctor_prescriptions(:one)
  end

  test "should get index" do
    get doctor_prescriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_prescription_url
    assert_response :success
  end

  test "should create doctor_prescription" do
    assert_difference('DoctorPrescription.count') do
      post doctor_prescriptions_url, params: { doctor_prescription: { description: @doctor_prescription.description, doctor_id: @doctor_prescription.doctor_id, dosage: @doctor_prescription.dosage, medicine_id: @doctor_prescription.medicine_id, patient_id: @doctor_prescription.patient_id } }
    end

    assert_redirected_to doctor_prescription_url(DoctorPrescription.last)
  end

  test "should show doctor_prescription" do
    get doctor_prescription_url(@doctor_prescription)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_prescription_url(@doctor_prescription)
    assert_response :success
  end

  test "should update doctor_prescription" do
    patch doctor_prescription_url(@doctor_prescription), params: { doctor_prescription: { description: @doctor_prescription.description, doctor_id: @doctor_prescription.doctor_id, dosage: @doctor_prescription.dosage, medicine_id: @doctor_prescription.medicine_id, patient_id: @doctor_prescription.patient_id } }
    assert_redirected_to doctor_prescription_url(@doctor_prescription)
  end

  test "should destroy doctor_prescription" do
    assert_difference('DoctorPrescription.count', -1) do
      delete doctor_prescription_url(@doctor_prescription)
    end

    assert_redirected_to doctor_prescriptions_url
  end
end
