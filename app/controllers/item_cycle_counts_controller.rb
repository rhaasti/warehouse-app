class ItemCycleCountsController < ApplicationController

  def index
    @item_cycle_counts = ItemCycleCount.all
    @items = Item.all
  end

  def show
    @item_cycle_count = ItemCycleCount.find_by(id:params[:id])
  end

  def new
    @item_cycle_count = ItemCycleCount.new
    @cycle_count = CycleCount.find(params[:cycle_count_id])

  end

  def create
    @item_cycle_count = ItemCycleCount.new(strong_item_cycle_count_params)
    @cycle_count = CycleCount.find(params[:cycle_count_id])
    @item_cycle_count.cycle_count = @cycle_count
    @item_cycle_count.user = current_user
    @item_cycle_count.save
  end

  private

  def strong_item_cycle_count_params
    params.require(:item_cycle_count).permit(:item_id, :item_quantity)
  end
end
