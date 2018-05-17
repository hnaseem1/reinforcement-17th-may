# Location class

class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

# Trip class

class Trip

  def initialize()
    @destinations = []
  end

  def add_destination(instance_of_location)
    @destinations.push(instance_of_location.name)
  end

  def print_trips
    puts "Began trip"
    puts "Travelled from #{@destinations[0]} to #{@destinations[1]}"
    counter = @destinations.length - 2
    counter.times do |i|
      puts "Travelled #{@destinations[i+1]} to #{@destinations[i+2]} "
    end
    puts "Ended Trip"
  end
end


toronto = Location.new('Toronto')
ottawa = Location.new('Ottawa')
montreal = Location.new('Montreal')
quebec_city = Location.new('Quebec City')
helifax = Location.new('Helifax')
st_john = Location.new("St. John's")


trip = Trip.new
trip.add_destination(toronto)
trip.add_destination(ottawa)
trip.add_destination(montreal)
trip.add_destination(quebec_city)
trip.add_destination(helifax)
trip.add_destination(st_john)
trip.print_trips
