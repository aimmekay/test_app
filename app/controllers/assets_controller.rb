class AssetsController < ApplicationController
	def show
		@asset = Asset.find(params[:id])
	end

	def new
	end

	def create
		@asset = Asset.new(assets_params)

		@asset.save
		redirect_to @asset
	end

	private
		def article_params
		  params.require(:assets).permit(:manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :firstName, :lastName, :status, :notes)
		end

end
