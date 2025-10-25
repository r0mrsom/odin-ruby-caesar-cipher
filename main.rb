def caesar_cipher(_message, _shift)

  #Converts _shift to integer, false if not an integer
  shiftFactor = Integer(_shift) rescue false

  #Stop code if shift factor is not an integer
  if shiftFactor == false
    puts "Shift factor should be an integer"
    return

  #Perform caesar cipher if shift is an integer
  else

  #Splits _message to convert to array, then map to return a new array with caesar cipher implemented to each array element (character)
  result = _message.split("").map do |character|
      #If upper case
      if (character.ord.between?(65, 90))
        ((((character.ord - 65) + shiftFactor) % 26) + 65).chr
      
      #if lower case        
      elsif (character.ord.between?(97, 122))
        ((((character.ord - 97) + shiftFactor) % 26) + 97).chr
      
      #If special character
      else
        character
      end
    end

  # Combine the result back into string
  puts result.join("")
  end
end

print "Please input message to convert to caesar_cipher: "
message = gets.chomp

print "Please input shift factor: "
shift = gets.chomp


caesar_cipher(message, shift)