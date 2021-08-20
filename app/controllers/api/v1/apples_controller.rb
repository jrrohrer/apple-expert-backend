class Api::V1::ApplesController < ApplicationController

  def index
    # because I am using a get request to get only apples from the user's requested category, I am sending the category ID back to the controller as a query param. The category variable saves the query param and passes it to an activerecord query method (see bottom of controller) that returns all the Apple instances that match the query. 
    category = params[:category_id].to_i
    @apples = get_apples_by_category(category)
    render json: AppleSerializer.new(@apples)
  end

  def create
    apple = Apple.create(apple_params)
    # apple.category_ids = params[:category_ids]
    if apple.save
      render json: AppleSerializer.new(apple)
    end
  end

  def edit

  end

  def update

  end

  def destroy
    apple = Apple.find_by_id(params[:id])
    apple.destroy
    render json: {message: "Successfully deleted #{apple.name}." }
  end

  private

  def apple_params
    params.require(:apple).permit(:variety, :harvest, :notes, :image_url, category_ids: [])
  end

  def get_apples_by_category(category)
    Apple.joins(:apples_categories).where(apples_categories: { category_id: category })
  end

end
