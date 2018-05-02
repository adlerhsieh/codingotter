class ScreencastsController < ApplicationController

  def index
    @screencasts = Screencast.page(params[:page])
  end

  def show
    @screencast = Screencast.find(params[:id])
  end

end
