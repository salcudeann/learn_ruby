$vow = ['a', 'e', 'i', 'o', 'u']
$con = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'w', 'v', 'x', 'y', 'z']

def translate(str)
  str.split.map { |curr_word|  translate_word(curr_word) }.join(' ')
end

def translate_word(word)
  final_word = ''
  word[0] = word[0].downcase

  if $vow.include? word[0]
    final_word += translate_vow(word)
  else
    final_word = +translate_con(word)
  end
end

def translate_vow(word)
  word + 'ay'
end

def translate_con(word)
  new_word = ''
  i = 0
  while $con.include? word[i]
    if (word[i]=='q') && word[i+1]=='u'
      i = i+1
    end
    i += 1
  end
  new_word = new_word + word[i, word.length - 1] + word[0, i ] + 'ay'
end
