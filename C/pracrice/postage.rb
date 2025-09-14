# 高さ h ≤ l1 ?
# ├─ yes → 縦横の長い方 max(y,x) ≤ l2 ?
# │           ├─ yes → m1
# │           └─ no → 縦+横 ≤ l3 ?
# │                     ├─ yes → m2
# │                     └─ no → m3
# └─ no  → 3辺の最大 max(y,x,h) ≤ l4 ?
#             ├─ yes → m4
#             └─ no → 縦+横+高さ ≤ l5 ?
#                       ├─ yes → m5
#                       └─ no → 体積(y*x*h) × m6

# l1,最初の分岐点高さ、trueの場合m1
#   l2、l1がyesの場合の分岐、最初のtrueだったらm2
#   l3,l2の次のtrueだったらm3
#   m3,それ以外だった時

# l1じゃなかった時
#   縦横高さのmaxがl4以下の場合m4
#   縦横高さの長さの和がl5以下の場合m5
#   それ以外の場合、体積*m6

# 入力
# y x h 縦、横、高さ
# l1 l2 .. l5 条件
# m1 m2 .. m6 結果

def postage_checker(length, width, height, ls, ms)
  l1, l2, l3, l4, l5 = ls
  m1, m2, m3, m4, m5, m6 = ms

  if height <= l1
    if [length, width].max <= l2
      m1
    elsif length + width <= l3
      m2
    else
      m3
    end
  else
    if [length, width, height].max <= l4
      m4
    elsif [length, width, height].sum <= l5
      m5
    else
      length * width * height * m6
    end
  end
end

length, width, height = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)
ms = gets.split.map(&:to_i)

puts postage_checker(length, width, height, ls, ms)
