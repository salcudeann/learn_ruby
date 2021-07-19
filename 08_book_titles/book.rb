class Book
  attr_writer :title

  EXC = ['the', 'a', 'an', 'and', 'or', 'in', 'the', 'of']

  def title
    @title.split(' ').each_with_index.map { |word, index| (EXC.include?(word)) && (index != 0) ? word : word.capitalize }.join(' ')
  end
end