class Api::V1::ApplesController < ApplicationController

  def index
    apples = Apple.all
    render json: apples
  end

  private

  def apple_params
    params.require(:apple).permit(:variety, :harvest, :notes, :image_url, :categories)
  end

end
