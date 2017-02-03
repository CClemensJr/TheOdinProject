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
end

#lets player object keep track of player name and location
Player = Struct.new(:name, :location)

#lets room objects store room name, description, connection to other rooms
# and a reference, to be used by other rooms for their connections
Room = Struct.new(:reference, :name, :description, :connection)
