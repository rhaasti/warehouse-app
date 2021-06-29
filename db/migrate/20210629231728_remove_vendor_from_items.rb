class RemoveVendorFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :vendor, :string
  end
end
