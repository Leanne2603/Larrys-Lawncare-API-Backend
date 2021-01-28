class CategoriesController < ApplicationController
  
  # Gets all categories for front end - no CRUD actions required as only 2 options available
  def index
    categories = Category.all
    render json: categories
  end
end
