class AnalystsController < ApplicationController
  def write
    render json: Analyst.find(params[:id]).write(Country.find(params[:country_id]))
  end
end
