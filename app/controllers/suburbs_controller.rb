class SuburbsController < ApplicationController

  # Gets suburbs list for list of areas serviced
  def index
    @suburbs = Suburb.all
    render json: @suburbs
  end

end
