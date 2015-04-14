class DtusController < ApplicationController
  
  def index
    @dtu = Dtu.all
  end

  def show
  	@dtu = Dtu.find(params[:id])
  end

  def new
  end

  def create
  	@dtu = Dtu.new(dtu_params)

  	@dtu.save
  	redirect_to @dtu
  end

  private
    def dtu_params
      params.require(:dtu).permit(:manufacturer, :model, :serialNumber, :jslgTag, :macAddress, :hostName, :department, :location, :firstName, :lastName, :status, :notes)
    end

end
