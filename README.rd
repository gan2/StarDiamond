= README
ダイアモンドゲームに関する仕様等はここにまとめる。
ドキュメントのフォーマットは RD。


== RD に関する参考資料
* RD事始め (http://www.rubyist.net/~rubikitch/computer/rd-intro/)
* Ruby Document format - Wikipedia (http://ja.wikipedia.org/wiki/Ruby_Document_format)

各項目のはじめに「=」。
箇条書きは「*」。順番を付けたいなら「-」


== ルール
* 駒を動かす順番: 緑→赤→黄
* 子駒は相手、味方関係なく線に沿っていれば、子駒一つ分だけ跳び越えることができる。
  また、跳び越えた後に子駒が一つ分空いていれば、連続して跳び越えることができる。この連続して跳び越える操作がこのゲームの醍醐味である。
* 子駒は王駒を跳び越えることはできない。
* 王駒は、駒が一直線に並んでいれば、線に沿っていくつでも跳び越えることができる。また、同様の操作を繰り返すことができる。
* 跳び越えられる駒がない場合、また戦略上の理由で、駒を一マス分だけ動かすことができる。ただし、この動作は普通に跳び越えた後にはできない。
* 相手の陣地に入ってはいけない。ただし、陣地入り口と白マスの辺が重複する部分に至ってはその限りではない。
* 一度跳び越えたルートを引き返してはいけない。
また、王駒を定義せず子駒15個のみでプレイするルールも存在する。


== ソースコードのエンコーディング
文字コードは UTF-8 で改行コードは Unix 形式の \n に統一して下さい．
以下，このエンコーディングのことを utf-8-unix と呼びます．
Meadow からであれば，M-x RET f utf-8-unix でカレントバッファのエンコーディングを utf-8-unix に変更できます．
Meadow のエンコーディングの処理については，「Maeadow」の項目を参考して下さい．


== git
=== よく使うコマンド
* git init
  * リポジトリ(.git ディレクトリ)を作成
* git status
  * 現在の状態を確認
* git add [paths]
  * ステージ(インデックス)にファイルを追加
* git commit
  * ステージ(インデックス)をコミット
  * git commit --amend で直前のコミットをやり直せる
* git log
  * ログの一覧を表示．
* git diff [paths]
  * ワーキングツリーと，ステージやコミットとの差分を表示

* git push
  * リモートリポジトリにローカルリポジトリの内容をコピー
  * 引数を省略すると origin master を指定したことになる
* git pull
  * ローカルリポジトリにリモートリポジトリの内容をコピー
  * 引数を省略すると origin master を指定したことになる



== YARD
=== タグのドキュメント
http://rubydoc.info/docs/yard/0.6.4/file/docs/Tags.md#taglist
タグの使い方、使用できるタグの一覧などがある。

==== タグのメモ
* @example: Show an example snippet of code for an object. The first line is an optional title.
 @example Reverse a string
   "mystring".reverse #=> "gnirtsym"

* @see: "See Also" references for an object. Accepts URLs or other code objects with an optional description at the end.
 @see http://example.com Description of URL
 @see SomeOtherClass#method

* @todo: Marks a TODO note in the object being documented
 @todo Add support for Jabberwocky service
 There is an open source Jabberwocky library available 
 at http://somesite.com that can be integrated easily
 into the project.

=== yrad graph について注意する点
タグの使い方をちょっと間違えただけで厄介なエラーが出るので注意！
例えば、@return [String] とするところを @return String と間違えただけで大量のエラーが表示される。
エラーしている箇所を特定するような情報は出力されないので，どこがエラーかを特定するのには骨が折れる…。
