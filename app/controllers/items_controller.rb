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
    if @item.save
      redirect_to items_path
    else
      flash[:notice] = "Please ensure you've included all of the information about your new item."
      redirect_to new_item_path
    end
  end

  private

  def strong_params
    params.require(:item).permit(:name, :vendor_id, :value, :internal_stock_id, :vendor_stock_id, :purchase_link, :purchase_measurement, :count_measurement, :count_type, :purchase_type, :minimum)
  end
end
