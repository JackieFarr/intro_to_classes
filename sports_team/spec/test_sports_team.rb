require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class.rb')


class TestQuidditchTeam < MiniTest::Test

  def test_get_team_name
    quidditch_1 = QuidditchTeam.new("Gryffindor", ["Dave"], "Hagrid")
    assert_equal("Gryffindor", quidditch_1.get_team_name())
  end

end
