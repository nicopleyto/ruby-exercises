def caesar_cipher (string, shift_factor)
    letter_array = ('a'..'z').to_a
    empty_array = []

    string.each_char do |char|
        if char == " " || !letter_array.include?(char.downcase)
            empty_array << char #if char is empty or not a letter, the character will return as is
        
        elsif char == char.upcase
            letter_array.each_with_index do |item, index| 
                if item == char.downcase && letter_array[index + shift_factor] != nil
                    empty_array << letter_array[index + shift_factor].upcase
                elsif item == char.downcase && letter_array[index + shift_factor] == nil
                    empty_array << letter_array[index + shift_factor - letter_array.length].upcase
                end
            end

        elsif char == char.downcase
            letter_array.each_with_index do |item, index|
                if item == char && letter_array[index + shift_factor] != nil
                    empty_array << letter_array[index + shift_factor]
                elsif item == char && letter_array[index + shift_factor] == nil
                    empty_array << letter_array[index + shift_factor - letter_array.length]
                end
            end
        end

    end

    puts empty_array.join
end

caesar_cipher("What a string!", 5)