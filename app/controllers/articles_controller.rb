class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy]

	before_action :load_ads, only: [:index, :show]


	def index
		@articles = Article.all
		@search = Article.search(params[:q])
		@articles = @search.result
		# @top_article = Article.first
	end

	def show
	end

	def new
		@article = Article.new
	end

	def edit
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to @article, notice: "Article was successfully created."
		else
			render "new", notice: @article.errors.full_messages
		end
	end

	def update
		if @article.update_attributes(article_params)
			redirect_to @article, notice: "Article was successfully changed."
		else
			render "edit", notice: @article.errors.full_messages
		end
	end

	def destroy
		@article.destroy
		redirect_to root_path, notice: "Article has been deleted."
	end



	def load_ads
		@ads = Ad.all
	end


	def add_new_comment
		@article = Article.find(params[:id])
		@comment = Comment.new(comment_params)
		@comment.user = current_user
		@comment.save
		@article.comments << @comment
		redirect_to article_path(@article)
	end



	private

		def set_article
			@article = Article.find(params[:id])
		end

		def article_params
			params.require(:article).permit(:headline, :standfirst, :image, :caption, :content, :author, topic_ids:[], region_ids:[])
		end

		def comment_params
			params.require(:comment).permit(:comment, :title)
		end

end
