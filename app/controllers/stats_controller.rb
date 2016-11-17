class StatsController < ApplicationController
  require 'url_api'
  require 'httparty'
  def index
    api = UrlApi.new()
    @url = api.unique_url
    @response = HTTParty.get("https://us.api.battle.net/data/sc2/league/29/201/0/6?access_token=gkxw63q8u6rspxhnt67hpywp")
  end
end
