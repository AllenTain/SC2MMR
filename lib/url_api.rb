require 'httparty'

class UrlApi
  @token = "gkxw63q8u6rspxhnt67hpywp"
  @key = "pcp7t55mgb3fznkw83qje72xjzsfnhnd"
#  @API_URL2 = "https://#{region}.api.battle.net/sc2/ladder/#{ladder_id}?locale=#{lang}&apikey=#{key}"
  
  def ladder_data(region2)
    if region2.nil?
      region2 = "eu"
    end
    url = "https://#{region2}.api.battle.net/sc2/ladder/#{ladder_id(region2)}?locale=en_US&apikey=pcp7t55mgb3fznkw83qje72xjzsfnhnd"
    JSON.parse(HTTParty.get(url).body)
  end

  def ladder_id(region)
    league = "6"
    gm_region = "https://#{region}.api.battle.net/data/sc2/league/29/201/0/#{league}?access_token=gkxw63q8u6rspxhnt67hpywp"
    JSON.parse(HTTParty.get(gm_region).body)["tier"].first["division"].first["ladder_id"]
  end
end
