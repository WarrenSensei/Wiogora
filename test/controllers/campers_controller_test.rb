require 'test_helper'

class CampersControllerTest < ActionController::TestCase
  setup do
    @camper = campers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camper" do
    assert_difference('Camper.count') do
      post :create, camper: { alt_address1: @camper.alt_address1, alt_address2: @camper.alt_address2, alt_city: @camper.alt_city, alt_state: @camper.alt_state, alt_zipcode: @camper.alt_zipcode, birthdate: @camper.birthdate, congregation: @camper.congregation, email: @camper.email, faith: @camper.faith, family_id: @camper.family_id, first_name: @camper.first_name, friends: @camper.friends, house: @camper.house, house_preference: @camper.house_preference, house_q1: @camper.house_q1, house_q2: @camper.house_q2, house_q3: @camper.house_q3, last_name: @camper.last_name, preferred_name: @camper.preferred_name, pronoun: @camper.pronoun }
    end

    assert_redirected_to camper_path(assigns(:camper))
  end

  test "should show camper" do
    get :show, id: @camper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camper
    assert_response :success
  end

  test "should update camper" do
    patch :update, id: @camper, camper: { alt_address1: @camper.alt_address1, alt_address2: @camper.alt_address2, alt_city: @camper.alt_city, alt_state: @camper.alt_state, alt_zipcode: @camper.alt_zipcode, birthdate: @camper.birthdate, congregation: @camper.congregation, email: @camper.email, faith: @camper.faith, family_id: @camper.family_id, first_name: @camper.first_name, friends: @camper.friends, house: @camper.house, house_preference: @camper.house_preference, house_q1: @camper.house_q1, house_q2: @camper.house_q2, house_q3: @camper.house_q3, last_name: @camper.last_name, preferred_name: @camper.preferred_name, pronoun: @camper.pronoun }
    assert_redirected_to camper_path(assigns(:camper))
  end

  test "should destroy camper" do
    assert_difference('Camper.count', -1) do
      delete :destroy, id: @camper
    end

    assert_redirected_to campers_path
  end
end
