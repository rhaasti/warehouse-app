class VendorsController < ApplicationController
    skip_before_action :authenticate_user!, except: [:new]

def index
  @vendors = Vendor.all
end

def show
  @vendor = Vendor.find_by(id:params[:id])
end

def new
  @vendor = Vendor.new
end

def create
  @vendor = Vendor.new(strong_vendor_params)
  if @vendor.save
        redirect_to vendors_path
  else
        flash[:alert] = "You already have a supplier with this name."
        redirect_to new_vendor_path
  end
    end

private

def strong_vendor_params
  params.require(:vendor).permit(:name)
end


end
