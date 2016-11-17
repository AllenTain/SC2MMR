module StatsHelper
  def region(id)
    case id
    when 0
      "NA"
    when 1
      "EU"
    end
  end
end
