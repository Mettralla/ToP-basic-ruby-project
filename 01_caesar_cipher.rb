
def caesar_cipher(message, shift_factor, result = '')
    message.each_char do |letter|
        ord_letter = letter.ord
        if ord_letter.between?(65, 90)
            new_ord_letter = ord_letter + shift_factor
            if new_ord_letter > 90 
                loop_letter = (new_ord_letter - 90) + 64
                cipher_letter = loop_letter.chr.upcase
                result += cipher_letter
            else
                cipher_letter = new_ord_letter.chr.upcase
                result += cipher_letter
            end
        elsif ord_letter.between?(97, 122)
            new_ord_letter = ord_letter + shift_factor
            if new_ord_letter > 122 
                loop_letter = (new_ord_letter - 122) + 97
                cipher_letter = loop_letter.chr
                result += cipher_letter
            else
                cipher_letter = new_ord_letter.chr
                result += cipher_letter
            end
        else  
            cipher_letter = ord_letter.chr
            result += cipher_letter
        end
    end
    puts "#{result}"
end


caesar_cipher("What a string!", 5)

