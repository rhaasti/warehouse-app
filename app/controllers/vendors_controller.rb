class VendorsController < ApplicationController

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
  @vendor.save
end

private

def strong_vendor_params
  params.require(:vendor).permit(:name)
end


end
