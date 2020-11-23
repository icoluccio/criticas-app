class NewspapersController < ApplicationController
  def create_edition
    render json: newspaper.create_edition!(country)
  end

  def newspaper
    Newspaper.find(params[:id])
  end

  def country
    Country.find(params[:id])
  end
end
