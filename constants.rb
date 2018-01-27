class Constants
end


class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  A =1
  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
    end
end

# require "Math"
puts Ticket::VENUES
# puts Math :: PI



Ticket::A =2
puts Ticket::A
# puts Ticket.A