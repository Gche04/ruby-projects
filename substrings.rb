
def substrings(string, dictionary)
    string_to_array = [string].reduce(Hash.new(0)) do |key, value|

        dictionary.each do |word|
            key[word] = value.downcase.scan(word).length unless value.downcase.scan(word).length == 0
        end
        key
    end
end