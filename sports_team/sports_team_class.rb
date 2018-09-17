# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

class QuidditchTeam

  attr_accessor :team_name, :players, :coach

  def initialize(team_name_input, arr_of_players, coach_input)
    @team_name = team_name_input
    @players   = arr_of_players
    @coach     = coach_input
  end

#   def team_name()
#     return @team_name
#   end
#
# # quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
# # p quidditch_1.get_team_name()
#
# def players()
#   return @players
# end
#
# def coach
#   return @coach
# end

# def add_new_player(player_added)
#   @players.push(player_added)
# end
#
# def check_player_existence(player_input)
#   for player in @players
#     if player_input == player
#       return true
#     else
#       return false
#     end
#   end
# end

def add_new_player(potential_new_player)

  found_player = false

  # loop
  # if something
  # found_player = true
  # end
  # end

  # if found_player
  #   # don't add
  # else
  #   # do the push - real good
  # end

  # if @players.include?(potential_new_player)
  #       return "this player already plays for #{@team_name}, please recruit someone else."
  #   # return nil
  # else
  #   @players.push(potential_new_player)
  # end

  for player in @players
    if potential_new_player == player
      p "this player already plays for #{@team_name}, please recruit someone else."
    else
      @players.push(potential_new_player)
    end
  end
end

# above three tests rely on one function "add_new_player", here, we have included a for loop, that checks if the player already exists. If they do then that player will not be added to the list and a message will be returned. If they do not, then they will be added to the array of players.






end
