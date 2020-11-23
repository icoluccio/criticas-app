class WorldsController < ApplicationController
  def best
    render json: world.best(strategy)
  end

  def world
    World.find(params[:id])
  end

  def strategy
    Strategy.find(params[:strategy_id])
  end
end
