module StatsHelper
  def region(id)
    case id
    when 0
      "NA"
    when 1
      "EU"
    end
  end

  def ratio(player)
    "#{((player['wins']/(player['wins'] + player['losses']).to_f) * 100).round }%"
  end

  def clanName(player)
    if player["character"]["clanTag"] == ""
      ""
    else
      "[#{player['character']['clanTag']}]"
    end
  end
end
