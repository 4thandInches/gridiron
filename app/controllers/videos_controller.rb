class VideosController < ApplicationController
  def upload
  end

  def uploaded
    @film = params[:film]
    @video = Video.create!(film: @film)
  end
end
