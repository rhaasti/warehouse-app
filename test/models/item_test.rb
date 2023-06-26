require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test 'associations' do
    item = Item.new
    assert_respond_to item, :item_cycle_counts
    assert_respond_to item, :vendor
    assert_respond_to item, :user
  end

  test 'validations' do
    item = Item.new

    assert_not item.valid?
    assert_includes item.errors[:name], "can't be blank"
    assert_includes item.errors[:internal_stock_id], "can't be blank"
    assert_includes item.errors[:vendor_stock_id], "can't be blank"
    assert_includes item.errors[:purchase_link], "can't be blank"
    assert_includes item.errors[:count_measurement], "can't be blank"
    assert_includes item.errors[:count_type], "can't be blank"
    assert_includes item.errors[:purchase_type], "can't be blank"
    assert_includes item.errors[:minimum], "can't be blank"
    assert_includes item.errors[:value], "can't be blank"

    item.name = 'Example Item'
    item.internal_stock_id = '12345'
    item.vendor_stock_id = 'V12345'
    item.purchase_link = 'http://example.com/item'
    item.count_measurement = 'count'
    item.count_type = 'type'
    item.purchase_type = 'type'
    item.minimum = 0
    item.value = 10.0

    assert item.valid?
  end
end
