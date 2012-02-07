#!c:/Ruby/bin/ruby -Ku
$KCODE = 'u'

require 'pp'
require 'kconv'

# = star_diamond.rb
# StarDiamond モジュール内のファイルを require するためのファイル

module StarDiamond
  # require 時に基準となるディレクトリのパス
  ROOT = File.join( File.expand_path(File.dirname(__FILE__)), 'star_diamond' )
end

# == Cylog モジュール内のファイルの require
#   require する順番には依存関係がある．
#   例えば，親クラスを require しないで子クラスを require するとエラーになる．
require_files = [
  'board',
  'piece',
  'player',
]

require_files.each do |file|
  require File.join( StarDiamond::ROOT, file )
end
