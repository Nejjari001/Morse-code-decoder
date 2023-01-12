# frozen_string_literal: true

MORSE_CODE_HASH_TABLE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  @char = MORSE_CODE_HASH_TABLE[morse_char]
  @char
end

def decode_word(morse_word)
  @word = ''
  @word_array = morse_word.split
  @word_array.map do |i|
    @word += decode_char(i)
  end
  @word.to_s
end

# def decode(mose_code)
#   @final_word = ''
#   @mose_code_arr = mose_code.split('   ')
#   @mose_code_arr.map do |mose_word|
#     @final_word += decode_word(mose_word)
#   end

#   puts "#{@final_word} "
# end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
