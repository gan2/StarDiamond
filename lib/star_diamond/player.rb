#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

module StarDiamond
  class Player
    attr_reader :color # :red or :green or :yellow

    def initialize(color)
      @color = color
    end
  end
end
