def reverser
  yield.split.map { |word| word.reverse }.join(' ')
end

def adder(x = 1)
  yield + x
end

def repeater(x = 0, &block)
  x.zero? ? block.call : (1..x).each do
    yield
  end
end