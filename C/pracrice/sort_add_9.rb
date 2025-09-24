# 1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
# n 個の組について、「文字」の値が同じ組同士の数値を足しあわせてまとめ、まとめた数値の降順で、文字とまとめた数値の組を出力してください。
# この際、まとめた数値は重複しません。

# 受け取る
n = gets.chomp.to_i
pairs = n.times.map { gets.chomp.split }.map { |s,d| [s, d.to_i] }
# 同じ値をまとめてその整数を足し合わせる、一つにする
sum_hash = Hash.new(0)
pairs.each do |s,d|
  sum_hash[s] += d
end
# まとめた後数値が大きい順で並び替える
sorted = sum_hash.sort_by {|s, total| -total }

sorted.each do |s, total|
  puts "#{s} #{total}"
end
