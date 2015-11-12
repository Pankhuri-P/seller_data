require 'test_helper'

class SellerChargesControllerTest < ActionController::TestCase
  setup do
    @seller_charge = seller_charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seller_charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller_charge" do
    assert_difference('SellerCharge.count') do
      post :create, seller_charge: {  }
    end

    assert_redirected_to seller_charge_path(assigns(:seller_charge))
  end

  test "should show seller_charge" do
    get :show, id: @seller_charge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller_charge
    assert_response :success
  end

  test "should update seller_charge" do
    patch :update, id: @seller_charge, seller_charge: {  }
    assert_redirected_to seller_charge_path(assigns(:seller_charge))
  end

  test "should destroy seller_charge" do
    assert_difference('SellerCharge.count', -1) do
      delete :destroy, id: @seller_charge
    end

    assert_redirected_to seller_charges_path
  end
end
