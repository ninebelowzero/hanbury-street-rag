class AdsController < ApplicationController

	before_action :set_ad, only: [:show, :edit, :update, :destroy]

	def index
		@ads = Ad.all
	end
	
	def show
	
	end
	
	
	
	private
	
		def set_ad
			@ad = Ad.find(params[:id])
		end
	
		def ad_params
			params.require(:ad).permit(:image_path)
		end

end