
def caesar_cipher (string, number)
    string_to_array = string.split('')

    new_string = string_to_array.map do |element|
        value = 0
        if element[/[a-z]+/] == element
            value = element.ord + number if number > 0
            value = element.ord - number if number < 0

            value = 96 + (value - 122) if value > 122
            value = 123 - (97 - value) if value < 97

            element = value.chr
        
        elsif element[/[A-Z]+/] == element
            value = element.ord + number if number > 0
            value = element.ord - number if number < 0

            value = 64 + (value - 90) if value > 90
            value = 91 - (65 - value) if value < 65

            element = value.chr

        else 
            element = element
        end 
    end
    string = new_string.join('')
end