def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, nr = 2)
  str = (str + ' ') * nr;
  str[0, str.length - 1]
end

def start_of_word(str, nr)
  str[0, nr]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  little_words = ['and', 'over', 'the']

  ret_str = str.split.map { |word| little_words.include?(word) ? word : word.capitalize }.join(" ")

  if little_words.each { |word| ret_str[0] = ret_str[0].upcase if ret_str[0] == word[0] }
  end

  ret_str
end
