class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id:params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(strong_params)
    @item.user = current_user
    @item.save
    redirect_to items_path
  end

  private

  def strong_params
    params.require(:item).permit(:name, :vendor_id, :value, :internal_stock_id, :vendor_stock_id, :purchase_link, :purchase_measurement, :count_measurement, :count_type, :purchase_type, :minimum)
  end
end
