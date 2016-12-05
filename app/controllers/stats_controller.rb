class StatsController < ApplicationController
  require 'url_api'
  require 'httparty'
  def index
    api = UrlApi.new()
    @region = params[:region].nil? ? "us" : params[:region]
    @league = params[:region].nil? ? "grandmaster" : params[:league]
    @ladder_data = api.ladder_data(@region, @league)
    @players = @ladder_data["team"].sort_by{|player| player["rating"]}.reverse
  end

  private
end
