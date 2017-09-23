class MainController < ApplicationController
  def index
    # As long as this view has no state, should be cache-able
    fresh_when(:public => true)
  end

  def handle404
    render :status => 404
  end

  def redirects
    render :json => Agent8ballRails::Application.from.to_json
  end
end
