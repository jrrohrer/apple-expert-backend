class Api::V1::ApplesController < ApplicationController

  def index
    apples = Apple.all
    
    options = {
      exclude: [:created_at, :updated_at]
    }

    render json: AppleSerializer.new(apples, options)
  end

  def create
    apple = Apple.new(apple_params)
    if apple.save
      render json: apple, status: accepted
    else
      render json: {errors: apple.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def apple_params
    params.require(:apple).permit(:variety, :harvest, :notes, :image_url, :category_ids)
  end

end
