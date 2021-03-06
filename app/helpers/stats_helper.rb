module StatsHelper
  def region(id)
    case id
    when 0
      "NA"
    when 1
      "EU"
    end
  end

  def name(player)
    if !player["member"].first["legacy_link"]["name"].nil?
      player["member"].first["legacy_link"]["name"].split("#").first
    else
      ""
    end
  end

  def ratio(player)
    "#{((player['wins']/(player['wins'] + player['losses'] + player['ties']).to_f) * 100).round }%"
  end

  def clanName(player)
    if player["character"]["clanTag"] == ""
      ""
    else
      "[#{player['character']['clanTag']}]"
    end
  end

  def win_loss_draw(player)
    "#{player['wins']}|#{player['losses']}|#{player['ties']}"
  end

  def race(player)
    case player["member"].first["played_race_count"].first["race"]["en_US"]
    when "Terran"
      image_tag("terran_icon.png")
    when "Zerg"
      image_tag("zerg_icon.png")
    when "Protoss"
      image_tag("protoss_icon.png")
    when "Random"
      image_tag("random_icon.png")
    end
  end
end
