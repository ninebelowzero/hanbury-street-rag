class TopicsController < ApplicationController

	before_action :set_topic, only: [:destroy]

  def index
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path, notice: "Topic created."
    else
      redirect_to topics_path, notice: "Update failed."
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: "Topic deleted."
  end

	private

		def set_topic
			@topic = Topic.find(params[:id])
		end

    def topic_params
      params.require(:topic).permit(:name)
    end


end