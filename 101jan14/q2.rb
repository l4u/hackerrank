n = gets.to_i
1.upto n do
  a, b, c, d = gets.split.map(&:to_i)
  j = (c - a).abs
  k = (d - b).abs
  puts j.gcd(k) - 1
end
