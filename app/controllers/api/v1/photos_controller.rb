require 'http'
require 'JSON'

class Api::V1::PhotosController < Api::V1::ApplicationController
  def index
    res = HTTP.auth("Client-ID #{ENV['UNSPLASH_APP_ID']}").get("https://api.unsplash.com/photos")
    render json: JSON.parse(res)
  end

  def more
    @page = params[:page]
    res = HTTP.auth("Client-ID #{ENV['UNSPLASH_APP_ID']}").get("https://api.unsplash.com/photos?page=#{@page}")
    render json: JSON.parse(res)
  end

  def random
  end

  def test
    render json: "OK!"
  end
end
