require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class.rb')


class TestQuidditchTeam < MiniTest::Test

  def test_get_team_name
    quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
    assert_equal("Gryffindor", quidditch_1.get_team_name())
  end

  def test_get_array_of_players
    quidditch_team_players = ["Katie Bell", "Angelina Johnson", "Alicia Spinnet", "Fred Weasley", "George Weasley", "Harry Potter", "oliver Wood"]
    quidditch_1 = QuidditchTeam.new("Gryffindor", quidditch_team_players, "Hagrid")
    assert_equal(quidditch_team_players, quidditch_1.players)
  end

end
