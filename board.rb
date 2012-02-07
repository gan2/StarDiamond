#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

require 'pp'
require 'kconv'

class Board
  attr_reader :width, :height
  
  # size = トライアングルの辺の長さ
  def initialize(size)
    @nodes = []
    # ボードの幅
    @width = (size * 2 - 1) * 3 - 2
    # ボードの高さはトライアングルの辺の長さ * 3 から重複分の 3 を引いたもの
    @height = size * 4 - 3

    @height.times do
      ary = []
      @width.times { ary << nil }
      @nodes << ary
    end
  end

  def display
    @nodes
  end
  
  class Node
    def initialize(start, goal, toreru_color, piece)
      @start = start
      @goal  = goal
      @toreru_color = toreru_color
      @piece = piece
    end

    def inspect
      
    end
  end
end
