require 'minitest/autorun'
require_relative '../models/rock_paper_scissors.rb'

class TestRockPaperScissors < Minitest::Test
  def setup
    @rock = "rock"
    @paper = "paper"
    @scissors = "scissors"
  end

  def test_rock_paper()
    game = RockPaperScissors.new(@rock, @paper)
    assert_equal("loose", game.get_winner)
  end

  def test_scissors_paper()
    game = RockPaperScissors.new(@scissors, @paper)
    assert_equal("win", game.get_winner)
  end

  def test_rock_scissors()
    game = RockPaperScissors.new(@rock, @scissors)
    assert_equal("win", game.get_winner)
  end



end
