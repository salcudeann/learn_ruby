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
  ret_str = ''
  str = str + ' '
  words = str.split(' ')

  if (words.length == 1)
    ret_str = words[0]
    ret_str[0] = ret_str[0].upcase #War and peace  # The bridge and Ocean
    ret_str
  else
    for i in 0..words.length - 1
      if (!little_words.include? words[i]) || ((i == 0) && (little_words.include? words[i]))
        words[i][0] = words[i][0].upcase
      end
      ret_str = ret_str + words[i] + ' '
      puts ret_str
    end

    ret_str[0, ret_str.length - 1]
  end

end