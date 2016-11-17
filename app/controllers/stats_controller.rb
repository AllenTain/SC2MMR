class StatsController < ApplicationController
  require 'url_api'
  require 'httparty'
  def index
    api = UrlApi.new()
    @region = params[:region]
    @ladder_data = api.ladder_data(@region)
  end

  private
end
