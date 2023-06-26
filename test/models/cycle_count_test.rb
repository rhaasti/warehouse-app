require 'test_helper'

class CycleCountTest < ActiveSupport::TestCase
  test 'associations' do
    cycle_count = CycleCount.new
    assert_respond_to cycle_count, :item_cycle_counts
  end
end
