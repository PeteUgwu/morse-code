def decode_char(char)
  hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I',
    '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }
  hash.each { |key, value| return value.to_s if key == char }
  nil
end

def decode_word(word)
  splitted = word.split
  result = []
  splitted.each do |i|
    result.push(decode_char(i))
  end
  result.join
end

def decode(phrase)
  splitted_phrase = phrase.split('   ')
  result = []
  splitted_phrase.each do |i|
    result.push(decode_word(i))
  end
  result.join(' ')
end
