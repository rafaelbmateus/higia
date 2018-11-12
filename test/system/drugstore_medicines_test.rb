require "application_system_test_case"

class DrugstoreMedicinesTest < ApplicationSystemTestCase
  setup do
    @drugstore_medicine = drugstore_medicines(:one)
  end

  test "visiting the index" do
    visit drugstore_medicines_url
    assert_selector "h1", text: "Drugstore Medicines"
  end

  test "creating a Drugstore medicine" do
    visit drugstore_medicines_url
    click_on "New Drugstore Medicine"

    fill_in "Medicine", with: @drugstore_medicine.medicine_id
    fill_in "Price", with: @drugstore_medicine.price
    fill_in "Promotion", with: @drugstore_medicine.promotion
    click_on "Create Drugstore medicine"

    assert_text "Drugstore medicine was successfully created"
    click_on "Back"
  end

  test "updating a Drugstore medicine" do
    visit drugstore_medicines_url
    click_on "Edit", match: :first

    fill_in "Medicine", with: @drugstore_medicine.medicine_id
    fill_in "Price", with: @drugstore_medicine.price
    fill_in "Promotion", with: @drugstore_medicine.promotion
    click_on "Update Drugstore medicine"

    assert_text "Drugstore medicine was successfully updated"
    click_on "Back"
  end

  test "destroying a Drugstore medicine" do
    visit drugstore_medicines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drugstore medicine was successfully destroyed"
  end
end
