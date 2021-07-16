def translate(str)
  str.split.map { |curr_word| translate_word(curr_word) }.join(' ')
end

def translate_word(word)
  cons = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'w', 'v', 'x', 'y', 'z']
  word[0] = word[0].downcase

  if (word[0].start_with?(*cons))
    i = 0
    while cons.include? word[i]
      if (word[i] == 'q') && word[i + 1] == 'u'
        i = i + 1
      end
      i += 1
    end
    word = word[i, word.length - 1] + word[0, i]
  end

  word + 'ay'
end

