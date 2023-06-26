require 'test_helper'

class ItemCycleCountTest < ActiveSupport::TestCase
  test 'associations' do
    item_cycle_count = ItemCycleCount.new
    assert_respond_to item_cycle_count, :item
    assert_respond_to item_cycle_count, :cycle_count
    assert_respond_to item_cycle_count, :user
  end
end
