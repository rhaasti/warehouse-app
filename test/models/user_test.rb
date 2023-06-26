require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'devise modules' do
    assert User.devise_modules.include?(:database_authenticatable)
    assert User.devise_modules.include?(:registerable)
    assert User.devise_modules.include?(:rememberable)
    assert User.devise_modules.include?(:validatable)
  end
end
