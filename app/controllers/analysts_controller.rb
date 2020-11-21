class AnalystsController < ApplicationController
  def write
    render json: Analyst.find(id).write
  end
end
