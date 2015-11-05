require 'test_helper'

class SellerCompaniesControllerTest < ActionController::TestCase
  setup do
    @seller_company = seller_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seller_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller_company" do
    assert_difference('SellerCompany.count') do
      post :create, seller_company: {  }
    end

    assert_redirected_to seller_company_path(assigns(:seller_company))
  end

  test "should show seller_company" do
    get :show, id: @seller_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller_company
    assert_response :success
  end

  test "should update seller_company" do
    patch :update, id: @seller_company, seller_company: {  }
    assert_redirected_to seller_company_path(assigns(:seller_company))
  end

  test "should destroy seller_company" do
    assert_difference('SellerCompany.count', -1) do
      delete :destroy, id: @seller_company
    end

    assert_redirected_to seller_companies_path
  end
end
