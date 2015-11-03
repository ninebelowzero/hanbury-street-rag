class RegionsController < ApplicationController

  before_action :set_region, only: [:show, :destroy]

  def show
  end

  def destroy
    @region.destroy
    redirect_to topics_path, notice: "Region deleted."
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      redirect_to topics_path, notice: "Region created."
    else
      redirect_to topics_path, notice: "Update failed."
    end
  end

  private

    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:name)
    end

end