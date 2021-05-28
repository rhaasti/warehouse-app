class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(strong_params)
    @item.save
  end

  private

  def strong_params
    params.require(:item).permit(:name, :vendor, :type, :inshape_stock_id, :vendor_stock_id, :purchase_link, :purchase_measurement, :count_measurement, :count_type, :purchase_type, :minimum)
  end
end
