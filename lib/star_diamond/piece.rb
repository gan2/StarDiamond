#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

module StarDiamond
  class Piece
    attr_reader :role  # :knight or :king
    attr_reader :color # :red or :green or :yellow

    def initialize(role, color)
      @role = role
      @color = color
    end
    
  end
end
