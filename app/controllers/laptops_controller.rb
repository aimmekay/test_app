class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end

  def new
  	@laptop = Laptop.new
  end

  def edit
    @laptop = Laptop.find(params[:id])
  end

  def create
  	@laptop = Laptop.new(laptop_params)

  	@laptop.save
  	redirect_to @laptop
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def update
  end

  private
    def laptop_params
      params.require(:laptop).permit(:manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :firstName, :lastName, :status, :notes)
    end

end
