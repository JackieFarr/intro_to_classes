require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class.rb')


class TestQuidditchTeam < MiniTest::Test

  def test_get_team_name
    quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
    assert_equal("Gryffindor", quidditch_1.team_name())
  end

  def test_get_array_of_players
    quidditch_team_players = [
      "Katie Bell",
      "Angelina Johnson",
      "Alicia Spinnet",
      "Fred Weasley",
      "George Weasley",
      "Harry Potter",
      "Oliver Wood"
    ]
    quidditch_1 = QuidditchTeam.new("Gryffindor", quidditch_team_players, "Hagrid")
    assert_equal(quidditch_team_players, quidditch_1.players)
  end

def test_get_coach_name
  quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
  assert_equal("Hagrid", quidditch_1.coach)
end

def test_set_coach_name
  quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
  quidditch_1.coach = "Lupin"
  assert_equal("Lupin", quidditch_1.coach)
end

def test_add_new_player
  quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
  quidditch_1.add_new_player("Gary")
  quidditch_1_players = quidditch_1.players
  assert_equal(2, quidditch_1_players.count)
end

def test_does_player_exist__player_exists
  quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
  possible_player_existance = quidditch_1.add_new_player("Dave")
  assert_equal("this player already plays for Gryffindor, please recruit someone else.", possible_player_existance)
end

def test_does_player_exist__player_does_not_exist
  quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
   quidditch_1.add_new_player("Barry")
   quidditch_1_players = quidditch_1.players
  assert_equal(2, quidditch_1_players.count)
end

end
