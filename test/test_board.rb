#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

require 'test/unit'
require 'board'

class TestBoard < Test::Unit::TestCase
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
