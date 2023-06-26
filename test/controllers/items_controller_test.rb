require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test 'should show item' do
    item = Item.create
    get :show, params: { id: item.id }
    assert_response :success
    assert_not_nil assigns(:item)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:item)
  end

  test 'should create item with valid params' do
    assert_difference('Item.count') do
      post :create, params: {
        item: {
          name: 'Test Item',
          vendor_id: Vendor.create.id,
          value: 10,
          internal_stock_id: 'IS001',
          vendor_stock_id: 'VS001',
          purchase_link: 'http://example.com',
          purchase_measurement: 'pcs',
          count_measurement: 'pcs',
          count_type: 'incremental',
          purchase_type: 'online',
          minimum: 5
        }
      }
    end
    assert_redirected_to items_path
  end

  test 'should not create item with invalid params' do
    assert_no_difference('Item.count') do
      post :create, params: { item: { name: nil } }
    end
    assert_redirected_to new_item_path
    assert_not_nil flash[:alert]
  end

  private

  def item_params
    {
      name: 'Test Item',
      vendor_id: Vendor.create.id,
      value: 10,
      internal_stock_id: 'IS001',
      vendor_stock_id: 'VS001',
      purchase_link: 'http://example.com',
      purchase_measurement: 'pcs',
      count_measurement: 'pcs',
      count_type: 'incremental',
      purchase_type: 'online',
      minimum: 5
    }
  end
end
