class TravelAgentSession
  def year=(year)
    @year = year.to_i + 2000
    @year
  end

  def year
    @year
  end

end


travel = TravelAgentSession.new
puts travel.year = 90
puts travel.year