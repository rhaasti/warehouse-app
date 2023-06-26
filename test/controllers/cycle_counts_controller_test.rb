require 'test_helper'

class CycleCountsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:cycle_counts)
  end

  test 'should show cycle count' do
    cycle_count = CycleCount.create
    get :show, params: { id: cycle_count.id }
    assert_response :success
    assert_not_nil assigns(:items)
    assert_not_nil assigns(:cycle_count)
    assert_not_nil assigns(:all_items)
    assert_not_nil assigns(:item_cycle_count)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:cycle_count)
  end

  test 'should create cycle count' do
    assert_difference('CycleCount.count') do
      post :create, params: { cycle_count: { name: 'Test Cycle Count' } }
    end
    assert_redirected_to cycle_count_path(assigns(:cycle_count))
  end

  private

  def cycle_count_params
    { name: 'Test Cycle Count' }
  end
end
