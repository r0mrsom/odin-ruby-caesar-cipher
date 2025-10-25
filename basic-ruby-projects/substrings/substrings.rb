#require 'pry-byebug'

def substrings(input, dictionary)

  #binding.pry
  
  result = dictionary.reduce(Hash.new) { |acc, current|
    if input.downcase.include?(current)
      acc[current] = input.downcase.scan(current).count
    end
    acc
  }

  p result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)