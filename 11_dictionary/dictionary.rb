class Dictionary
  attr_reader :hash

  def initialize
    @hash = {}
  end

  def entries
    @hash
  end

  def add(key)
    key.is_a?(String) ? @hash[key] = nil : @hash.merge!(key)
  end

  def keywords()
    key_array = []
    @hash.each { |k, v| key_array.push(k) }
    key_array.sort
  end

  def include?(key)
    @hash.has_key?(key) ? true : false
  end

  def find(str)
    found_hash = {}
    if str.is_a? String
      @hash.each do |k, v|
        if k[0...str.length] == str
          found_hash[k] = v
        end
      end
      found_hash
    end
  end

  def printable
    str = ""
    @hash.reverse_each.each do |key, value|
      str = "#{str}[#{key}] " + "\"#{value}\"\n"
    end
    str = str[0, str.length - 1]
  end

end