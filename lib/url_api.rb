require 'httparty'

class UrlApi
  region = "eu"
  token = "gkxw63q8u6rspxhnt67hpywp"
  key = "pcp7t55mgb3fznkw83qje72xjzsfnhnd"
  season = "29"
  match_type = "201"
  league = "6"
  lang = "en_US"
  ladder_id = "187626"
  API_URL = "https://#{region}.api.battle.net/data/sc2/league/#{season}/#{match_type}/0/#{league}?access_token=#{token}"
  API_URL = "https://#{region}.api.battle.net/sc2/ladder/#{ladder_id}?locale=#{lang}&apikey=#{key}"
  
  def unique_url
    return HTTParty.get(API_URL)
  end
end
