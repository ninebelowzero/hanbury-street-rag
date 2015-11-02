class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy]

	before_action :load_ads, only: [:index, :show]


	def index
		@articles = Article.all
	end

	def show
	end

	def new
	end

	def create
	end

	def update
	end

	def destroy
	end



	def load_ads
		@ads = Ad.all
	end


	private

		def set_article
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:headline, :standfirst, :content, :image_path, :thumbnail_path)
		end

end
