class StatsController < ApplicationController
  require 'url_api'
  require 'httparty'
  def index
    api = UrlApi.new()
    @ladder_data = api.ladder_data
  end

  private
  def stats_params
    params.require(:stats).require(:region)
  end
end
