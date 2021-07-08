class CycleCountsController < ApplicationController

  def index
    @cycle_counts = CycleCount.all
  end

  def show
    @cycle_count = CycleCount.find_by(id:params[:id])
  end

  def new
    @cycle_count = CycleCount.new
  end

  def create
    @cycle_count = CycleCount.new(strong_cycle_count_params)
    @cycle_count.save
    redirect_to cycle_counts_path(@cycle_count)
  end

  private

  def strong_cycle_count_params
    params.permit(:cycle_count)
  end

end
