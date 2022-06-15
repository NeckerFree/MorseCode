@dictionary = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @letter = @dictionary[char]
  @letter
end

def decode_word(word)
  @letters = word.split
  @current = ''
  @letters.each do |letter|
    decode_char(letter)
    @current += decode_char(letter)
  end
  @current
end

def decode_message(message)
  @words = message.split('   ')
  @response = ''
  @words.each do |word|
    @response += "#{decode_word(word)} "
  end
  print @response.to_s
end

# decode_char('.-')
# decode_word('-- -.--')
# decode_message('-- -.--   -. .- -- .')
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
