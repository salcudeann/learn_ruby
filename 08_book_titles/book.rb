class Book
  attr_writer :title

  def title
    exc = ['the', 'a', 'an', 'and', 'or', 'in', 'the', 'of']

    @title.split(' ').each_with_index.map { |word, index| (exc.include?(word)) && (index != 0) ? word : word.capitalize }.join(' ')
  end
end