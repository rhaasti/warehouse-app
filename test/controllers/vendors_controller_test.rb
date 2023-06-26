require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test 'should show vendor' do
    vendor = Vendor.create
    get :show, params: { id: vendor.id }
    assert_response :success
    assert_not_nil assigns(:vendor)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:vendor)
  end

  test 'should create vendor with valid params' do
    assert_difference('Vendor.count') do
      post :create, params: { vendor: { name: 'Test Vendor' } }
    end
    assert_redirected_to vendors_path
  end

  test 'should not create vendor with duplicate name' do
    Vendor.create(name: 'Test Vendor')
    assert_no_difference('Vendor.count') do
      post :create, params: { vendor: { name: 'Test Vendor' } }
    end
    assert_redirected_to new_vendor_path
    assert_not_nil flash[:alert]
  end

  private

  def vendor_params
    { name: 'Test Vendor' }
  end
end
