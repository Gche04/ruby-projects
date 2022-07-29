#spec/Caesar_cipher_spec.rb
require './lib/Caesar-cipher.rb'

describe CCipher do
    describe "#caesar-cipher" do
        it "each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet" do
            ccipher = CCipher.new
            expect(ccipher.caesar_cipher("a", 3)).to eql("d")
            expect(ccipher.caesar_cipher("A", 3)).to eql("D")
            expect(ccipher.caesar_cipher("z", 3)).to eql("c")
            expect(ccipher.caesar_cipher("Z", 3)).to eql("C")
            expect(ccipher.caesar_cipher("a", -3)).to eql("x")
            expect(ccipher.caesar_cipher("A", -3)).to eql("X")
            expect(ccipher.caesar_cipher("z", -3)).to eql("w")
            expect(ccipher.caesar_cipher("!", 3)).to eql("!")
        end
    end
end
