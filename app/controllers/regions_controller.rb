class RegionsController < ApplicationController

  before_action :set_region, only: [:show, :edit, :update, :destroy]

  def show
  end

  private

    def set_region
      @region = Region.find(params[:id])
    end

end