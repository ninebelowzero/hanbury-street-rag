class AdsController < ApplicationController

	before_action :set_ad, only: [:show, :edit, :update, :destroy]

	def index
		@ads = Ad.all
	end

	def update
		@ad.update_attributes(ad_params)
		redirect_to ads_path, notice: "Ad updated."
	end
	
	def destroy
		@ad.destroy
		redirect_to ads_path, notice: "Ad has been deleted."
	end
	
	
	private
	
		def set_ad
			@ad = Ad.find(params[:id])
		end
	
		def ad_params
			params.require(:ad).permit(:image_path, :link_path)
		end

end