class StatsController < ApplicationController
  include HTTParty
  @token = "gkxw63q8u6rspxhnt67hpywp"
  base_uri "https://us.api.battle.net/data/sc2/league/29/201/0/6?access_token=#{@token}"
  def index
    @data = base_uri
  end

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def questions
    self.class.get("/2.2/questions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end
