require 'test_helper'

class ShirtOrdersControllerTest < ActionController::TestCase
  setup do
    @shirt_order = shirt_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shirt_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shirt_order" do
    assert_difference('ShirtOrder.count') do
      post :create, shirt_order: { fulfilled: @shirt_order.fulfilled, house: @shirt_order.house, number: @shirt_order.number, shirt_size: @shirt_order.shirt_size }
    end

    assert_redirected_to shirt_order_path(assigns(:shirt_order))
  end

  test "should show shirt_order" do
    get :show, id: @shirt_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shirt_order
    assert_response :success
  end

  test "should update shirt_order" do
    patch :update, id: @shirt_order, shirt_order: { fulfilled: @shirt_order.fulfilled, house: @shirt_order.house, number: @shirt_order.number, shirt_size: @shirt_order.shirt_size }
    assert_redirected_to shirt_order_path(assigns(:shirt_order))
  end

  test "should destroy shirt_order" do
    assert_difference('ShirtOrder.count', -1) do
      delete :destroy, id: @shirt_order
    end

    assert_redirected_to shirt_orders_path
  end
end
