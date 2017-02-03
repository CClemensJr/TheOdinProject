# A simple text adventure game

# keeps track of player and a list of rooms
class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms[reference]
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end
  
  def go(direction)
    puts "You go " + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end
end

#lets player object keep track of player name and location
class Player
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
  end
end

#lets room objects store room name, description, connection to other rooms
# and a reference, to be used by other rooms for their connections
class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference = reference
    @name = name
    @description = description
    @connections = connections
  end

  def full_description
    @name + "\n\nYou are in " + @description
  end
end
