n, m = gets.split.map(&:to_i)
sum = 0
1.upto m do
  a, b, k = gets.split.map(&:to_i)
  sum += (b - a + 1) * k
end
puts "#{sum / n}"
