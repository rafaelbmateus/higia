require 'test_helper'

class DrugstoreMedicinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drugstore_medicine = drugstore_medicines(:one)
  end

  test "should get index" do
    get drugstore_medicines_url
    assert_response :success
  end

  test "should get new" do
    get new_drugstore_medicine_url
    assert_response :success
  end

  test "should create drugstore_medicine" do
    assert_difference('DrugstoreMedicine.count') do
      post drugstore_medicines_url, params: { drugstore_medicine: { medicine_id: @drugstore_medicine.medicine_id, price: @drugstore_medicine.price, promotion: @drugstore_medicine.promotion } }
    end

    assert_redirected_to drugstore_medicine_url(DrugstoreMedicine.last)
  end

  test "should show drugstore_medicine" do
    get drugstore_medicine_url(@drugstore_medicine)
    assert_response :success
  end

  test "should get edit" do
    get edit_drugstore_medicine_url(@drugstore_medicine)
    assert_response :success
  end

  test "should update drugstore_medicine" do
    patch drugstore_medicine_url(@drugstore_medicine), params: { drugstore_medicine: { medicine_id: @drugstore_medicine.medicine_id, price: @drugstore_medicine.price, promotion: @drugstore_medicine.promotion } }
    assert_redirected_to drugstore_medicine_url(@drugstore_medicine)
  end

  test "should destroy drugstore_medicine" do
    assert_difference('DrugstoreMedicine.count', -1) do
      delete drugstore_medicine_url(@drugstore_medicine)
    end

    assert_redirected_to drugstore_medicines_url
  end
end
