#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

require 'test_helper'

class TestBoard < Test::Unit::TestCase
  include StarDiamond
  
  def setup
    @board = Board.new(3)
  end

  def test_initialize
    assert_equal 13, @board.width
    assert_equal 9,  @board.height
  end
  
  def test_display
    
  end
end
