def reverser
  yield.split.map { |word| word.reverse }.join(' ')
end
