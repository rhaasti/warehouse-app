class ChangeInshapeIdToInternalId < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :inshape_stock_id, :internal_stock_id
  end
end
