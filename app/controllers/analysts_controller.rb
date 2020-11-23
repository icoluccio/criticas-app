class AnalystsController < ApplicationController
  def write
    render json: analyst.write(country)
  end

  def analyst
    Analyst.find(params[:id])
  end

  def country
    Country.find(params[:country_id])
  end
end
