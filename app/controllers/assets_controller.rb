class AssetsController < ApplicationController
	def index
		@assets = Asset.all
	end

	def show
		@asset = Asset.find(params[:id])
	end

	def new
	end

	def create
		@asset = Asset.new(asset_params)

		@asset.save
		redirect_to @asset
	end

	private
		def asset_params
		  params.require(:assets).permit(:manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :firstName, :lastName, :status, :notes)
		end

end
