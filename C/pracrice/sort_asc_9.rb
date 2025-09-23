# 1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
# n 個の組を、「整数」の値で昇順に並べ変え、「文字」を出力してください。

n = gets.to_i
pairs = n.times.map { gets.split }
pairs = pairs.map { |s, d| [s, d.to_i] }
sorted = pairs.sort_by { |s, d| d }
sorted.each { |s, d| puts s }
