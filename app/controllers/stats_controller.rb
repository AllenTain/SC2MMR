class StatsController < ApplicationController
  require 'url_api'
  require 'httparty'
  def index
    api = UrlApi.new()
    @region = params[:region]
    @ladder_data = api.ladder_data(@region)
    @players = @ladder_data["team"].sort_by{|player| player["rating"]}.reverse
  end

  private
end
