# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

class QuidditchTeam

  attr_accessor :team_name, :players, :coach, :total_points

  def initialize(team_name_input, arr_of_players, coach_input)
    @team_name = team_name_input
    @players   = arr_of_players
    @coach     = coach_input
    @total_points = 0
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

  # found_player = false

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

  if @players.include?(potential_new_player)
        return "this player already plays for #{@team_name}, please recruit someone else."
    # return nil
  else
    @players.push(potential_new_player)
  end
end

#   for player in @players
#     if potential_new_player == player
#       p "this player already plays for #{@team_name}, please recruit someone else."
#     else
#       @players.push(potential_new_player)
#     end
#   end
# end

#the test immediately above worked for the tests 'add new player' and 'test_does_player_exist__player_exists' 'test_does_player_exist__player_does_not_exist,' but failed when it came to test test_add_player_multiple_players_exist

def update_points(win_lose_draw_input)
  case(win_lose_draw_input).downcase
    when "win"
      @total_points += 2
    when "draw"
      @total_points += 1
    when "lose"
      @total_points += 0
    else
      p "#{win_lose_draw_input} is not a suitable response, please enter win, lose or draw"
  end
end




end
