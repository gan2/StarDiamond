#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

require 'pp'
require 'kconv'


lib_dir = File.dirname(__FILE__) + '/../lib'
$:.unshift lib_dir unless $:.include?(lib_dir)
require 'cylog'