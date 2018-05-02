class ScreencastsController < ApplicationController

  def index
    @screencasts = Screencast.page(params[:page])
  end

  def show
    
  end

end
