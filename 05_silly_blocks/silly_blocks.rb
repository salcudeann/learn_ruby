def reverser
  yield.split.map { |word| word.reverse }.join(' ')
end

def adder(x = 1)
  yield + x
end
