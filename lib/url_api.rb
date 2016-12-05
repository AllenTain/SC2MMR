require 'httparty'
require 'slowweb'
SlowWeb.limit('"https://us.api.battle.net', 60, 1)
SlowWeb.limit('"https://eu.api.battle.net', 60, 1)
SlowWeb.limit('"https://kr.api.battle.net', 60, 1)

class UrlApi
  @token = "gkxw63q8u6rspxhnt67hpywp"
  @key = "pcp7t55mgb3fznkw83qje72xjzsfnhnd"
  
  def ladder_data(region, league)
    url = "https://#{region}.api.battle.net/data/sc2/ladder/#{ladder_id(region, league)}?access_token=gkxw63q8u6rspxhnt67hpywp"
    JSON.parse(HTTParty.get(url).body)
  end

  def ladder_id(region, league)
    rank = 6;
    case league
    when "Grandmaster"
      rank = 6
    when "Masters"
      rank = 5
    when "Diamond"
      rank = 4
    when "Platinum"
      rank = 3
    when "Gold"
      rank = 2
    when "Silver"
      rank = 1
    when "Bronze"
      rank = 0
    end
    gm_region = "https://#{region}.api.battle.net/data/sc2/league/29/201/0/#{rank}?access_token=gkxw63q8u6rspxhnt67hpywp"
    JSON.parse(HTTParty.get(gm_region).body)["tier"].first["division"].first["ladder_id"]
  end
end
