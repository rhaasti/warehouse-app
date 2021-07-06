class RemoveTypeFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :type, :string
  end
end
