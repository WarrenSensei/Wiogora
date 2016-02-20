require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { after_care: @registration.after_care, allergies: @registration.allergies, approved: @registration.approved, before_care: @registration.before_care, cancelled: @registration.cancelled, cost: @registration.cost, dropoff_time: @registration.dropoff_time, general_release: @registration.general_release, health_details: @registration.health_details, insurance: @registration.insurance, medical_release: @registration.medical_release, notes: @registration.notes, philosophy_release: @registration.philosophy_release, photo_release: @registration.photo_release, pickup_time: @registration.pickup_time, returning: @registration.returning, shirt_size: @registration.shirt_size, year: @registration.year }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { after_care: @registration.after_care, allergies: @registration.allergies, approved: @registration.approved, before_care: @registration.before_care, cancelled: @registration.cancelled, cost: @registration.cost, dropoff_time: @registration.dropoff_time, general_release: @registration.general_release, health_details: @registration.health_details, insurance: @registration.insurance, medical_release: @registration.medical_release, notes: @registration.notes, philosophy_release: @registration.philosophy_release, photo_release: @registration.photo_release, pickup_time: @registration.pickup_time, returning: @registration.returning, shirt_size: @registration.shirt_size, year: @registration.year }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
