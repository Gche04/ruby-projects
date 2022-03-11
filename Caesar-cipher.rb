
def caesar_cipher (string, number)
    encrypted = ''
    string.each_char do |element|
        value = 0
        if element[/[a-z]+/] == element
            value = element.ord + number if number > 0
            value = element.ord - number if number < 0

            value = 96 + (value - 122) if value > 122
            value = 123 - (97 - value) if value < 97

            encrypted += value.chr
        
        elsif element[/[A-Z]+/] == element
            value = element.ord + number if number > 0
            value = element.ord - number if number < 0

            value = 64 + (value - 90) if value > 90
            value = 91 - (65 - value) if value < 65

            encrypted += value.chr
        else 
            encrypted += element
        end 
    end
    encrypted
end

puts caesar_cipher("aaaaaaaa", 5)