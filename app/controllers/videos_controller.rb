class VideosController < ApplicationController
  def upload
  end

  def uploaded
    @video = params[:video]
  end
end
