# https://paiza.jp/works/mondai/prob60/alphabets_large_or_small_9
#
# 1行目の英大文字 X から、2行目の英大文字 Y の範囲に3行目のアルファベット C が含まれていれば"true", そうでなければ"false"と出力してください。
# X が Y よりもアルファベット順で後ろになる場合(X = 'G', Y = 'F'のときなど)も"false"と出力してください。

# XとYが定義される、三行目にアルファベットが渡るので、XとYの間に三行目のアルファベットが含まれているか確認が必要,前であればtrue,違えばfalse
# さらにXがYより後ろに来る場合false

X = gets.chomp.to_s
Y = gets.chomp.to_s
C = gets.chomp.to_s

# アルファベットの定義が必要、番号もセットで渡す必要がある
# eachwithindexでいけそう
# ハッシュがいいと思う
ABC = ("A".."Z").to_a
pairs = {}
ABC.each_with_index do |l, i|
  pairs[l] = i + 1
end
# pairsの中から同じアルファベットを参照、その値である数値を取り出す、同じくYも取り出す。
pick_x = pairs[X]
pick_y = pairs[Y]
pick_c = pairs[C]

# XとYの数値間（CがXより大きくYより小さいか）にあるか判定、true,false
if pick_c > pick_x && pick_c < pick_y
  true
else
  false
end



