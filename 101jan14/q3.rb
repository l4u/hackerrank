total_n = gets.to_i
1.upto total_n do
  n, m = gets.split.map(&:to_i)
  n = n+1
  arr = {}
  1.upto m do
    count = 0
    v = gets.split
    if v[0] == "UPDATE"
      x0, y0, z0 = v[1..3].map(&:to_s)
      key = x0 + "-" + y0 + "-" + z0
      arr[key] = v[4].to_i
    elsif v[0] == "QUERY"
      x1, y1, z1 = v[1..3].map(&:to_i)
      x2, y2, z2 = v[4..6].map(&:to_i)
      arr.each do |k,value|
        x3, y3, z3 = k.split('-').map(&:to_i)
        if (x3 < x1) then next end
        if (x3 > x2) then next end
        if (y3 < y1) then next end
        if (y3 > y2) then next end
        if (z3 < z1) then next end
        if (z3 > z2) then next end
        count += value
      end
      puts count
    end
  end
end
