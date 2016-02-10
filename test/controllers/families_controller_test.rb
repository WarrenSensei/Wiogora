require 'test_helper'

class FamiliesControllerTest < ActionController::TestCase
  setup do
    @family = families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family" do
    assert_difference('Family.count') do
      post :create, family: { address1: @family.address1, address2: @family.address2, alt_phone: @family.alt_phone, city: @family.city, notes: @family.notes, parent1_name: @family.parent1_name, parent2_name: @family.parent2_name, phone: @family.phone, referral: @family.referral, state: @family.state, trusted_adults: @family.trusted_adults, zipcode: @family.zipcode }
    end

    assert_redirected_to family_path(assigns(:family))
  end

  test "should show family" do
    get :show, id: @family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family
    assert_response :success
  end

  test "should update family" do
    patch :update, id: @family, family: { address1: @family.address1, address2: @family.address2, alt_phone: @family.alt_phone, city: @family.city, notes: @family.notes, parent1_name: @family.parent1_name, parent2_name: @family.parent2_name, phone: @family.phone, referral: @family.referral, state: @family.state, trusted_adults: @family.trusted_adults, zipcode: @family.zipcode }
    assert_redirected_to family_path(assigns(:family))
  end

  test "should destroy family" do
    assert_difference('Family.count', -1) do
      delete :destroy, id: @family
    end

    assert_redirected_to families_path
  end
end
