class AddUserToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :user, null: true, foreign_key: true
  end
end
