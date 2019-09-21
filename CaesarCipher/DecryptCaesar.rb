# Caesar cipher implementation, use this file to decrypt
# From the Caribbean with love

def CaesarDecrypt(string, shifts)

  alphabet = Array('a'..'z') # Alphabet array
  decryption = Hash[alphabet.zip(alphabet.rotate(-shifts))] # Revert shift rotation
  string.chars.map { |decrypt| decryption.fetch(decrypt, " ") } # String get's decrypted

end

p ("Write the string to decrypt and the shifts used to encrypt")
puts CaesarDecrypt(string = gets.chomp, Integer(shifts = gets.chomp.to_i)).join
