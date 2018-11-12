require "application_system_test_case"

class DoctorPrescriptionsTest < ApplicationSystemTestCase
  setup do
    @doctor_prescription = doctor_prescriptions(:one)
  end

  test "visiting the index" do
    visit doctor_prescriptions_url
    assert_selector "h1", text: "Doctor Prescriptions"
  end

  test "creating a Doctor prescription" do
    visit doctor_prescriptions_url
    click_on "New Doctor Prescription"

    fill_in "Description", with: @doctor_prescription.description
    fill_in "Doctor", with: @doctor_prescription.doctor_id
    fill_in "Dosage", with: @doctor_prescription.dosage
    fill_in "Medicine", with: @doctor_prescription.medicine_id
    fill_in "Patient", with: @doctor_prescription.patient_id
    click_on "Create Doctor prescription"

    assert_text "Doctor prescription was successfully created"
    click_on "Back"
  end

  test "updating a Doctor prescription" do
    visit doctor_prescriptions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @doctor_prescription.description
    fill_in "Doctor", with: @doctor_prescription.doctor_id
    fill_in "Dosage", with: @doctor_prescription.dosage
    fill_in "Medicine", with: @doctor_prescription.medicine_id
    fill_in "Patient", with: @doctor_prescription.patient_id
    click_on "Update Doctor prescription"

    assert_text "Doctor prescription was successfully updated"
    click_on "Back"
  end

  test "destroying a Doctor prescription" do
    visit doctor_prescriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doctor prescription was successfully destroyed"
  end
end
