def measure(x = 1)
  sum = 0
  (1..x).each do
    t1 = Time.now
    yield
    t2 = Time.now
    sum += t2 - t1
  end
  sum / x
end

