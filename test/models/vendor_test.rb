require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  test 'associations' do
    vendor = Vendor.new
    assert_respond_to vendor, :items
  end

  test 'validations' do
    vendor = Vendor.new

    assert_not vendor.valid?
    assert_includes vendor.errors[:name], "can't be blank"

    vendor.name = 'Example Vendor'
    assert vendor.valid?

    duplicate_vendor = Vendor.new(name: 'Example Vendor')
    assert_not duplicate_vendor.valid?
    assert_includes duplicate_vendor.errors[:name], 'has already been taken'
  end
end
