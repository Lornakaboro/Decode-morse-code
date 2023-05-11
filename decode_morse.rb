MORSE_CODE = {
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
}.freeze

def decode_char(morse_code)
  MORSE_CODE[morse_code]
end

def decode_word(morse_code_word)
  morse_characters = morse_code_word.split
  decoded_characters = morse_characters.map do |morse_character|
    decode_char(morse_character)
  end
  decoded_characters.join
end

def decode_message(morse_code_message)
  morse_words = morse_code_message.split
  decoded_words = morse_words.map do |morse_word|
    decode_word(morse_word)
  end
  decoded_words.join(' ')
end


puts decode_message('- . ... -   .. ...   .-   --. --- --- -..   .-. ..- -... .. . ... ')
