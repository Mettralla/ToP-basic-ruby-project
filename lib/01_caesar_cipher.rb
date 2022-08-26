# frozen_string_literal: true

# caesar cipher
def caesar_cipher(message, shift, result = '')
  message.each_char do |letter|
    ascii = letter.ord
    range = ascii.between?(65, 90) ? [65, 90] : [97, 122]
    if ascii.between?(range[0], range[1])
      new_ascii = ascii + shift
      if new_ascii > range[1]
        loop_letter = (new_ascii - range[1]) + range[0] - 1
        cipher = loop_letter.chr
      else
        cipher = new_ascii.chr
      end
    else
      cipher = ascii.chr
    end
    result += cipher
  end
  result.to_s
end
