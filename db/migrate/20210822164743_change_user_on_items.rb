class ChangeUserOnItems < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :user_id, :integer, null: false, foreign_key: true
  end
end
