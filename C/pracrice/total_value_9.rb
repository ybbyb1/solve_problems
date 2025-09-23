# https://paiza.jp/works/mondai/prob60/total_value_9
# 2つの整数の組がn個与えられるので、各組の計算結果を足し合わせたものを出力してください。
# 各組の計算結果は次の値です。
# ・2つの整数の組を足し合わせたもの
# ・ただし、2つの整数が同じ値だった場合は、掛け合わせたもの

n = gets.chomp.to_i
numbers = n.times.map { gets.chomp.split.map(&:to_i) }
total = numbers.sum { |a, b| a == b ? a * b : a + b }
puts total
