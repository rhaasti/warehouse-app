require 'test_helper'

class ItemCycleCountsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_cycle_counts)
    assert_not_nil assigns(:items)
  end

  test 'should show item cycle count' do
    item_cycle_count = ItemCycleCount.create
    get :show, params: { id: item_cycle_count.id }
    assert_response :success
    assert_not_nil assigns(:item_cycle_count)
  end

  test 'should get new' do
    cycle_count = CycleCount.create
    get :new, params: { cycle_count_id: cycle_count.id }
    assert_response :success
    assert_not_nil assigns(:item_cycle_count)
    assert_not_nil assigns(:cycle_count)
  end

  test 'should create item cycle count' do
    cycle_count = CycleCount.create
    item = Item.create
    assert_difference('ItemCycleCount.count') do
      post :create, params: {
        cycle_count_id: cycle_count.id,
        item_cycle_count: { item_id: item.id, item_quantity: 10 }
      }
    end
    assert_redirected_to cycle_count_path(assigns(:cycle_count))
  end

  private

  def item_cycle_count_params
    { item_id: Item.create.id, item_quantity: 10 }
  end
end
