class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy]


	def index
		@articles = Article.all
	end

	def show

	end



	private

		def set_article
			@article = Article.find(params[:id])
		end

		def article_params
		  params.require(:article).permit(:headline, :standfirst, :content, :image_path, :thumbnail_path)
		end

end
