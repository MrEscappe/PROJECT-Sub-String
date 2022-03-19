# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(phrase, dictionary)
    result = Hash.new(0)
    array = phrase.downcase.split(" ")
    for c in array
        dictionary.each do |e|            
            if c.include?(e)                         
                result[e] += 1
            end
        end
    end
    result
end

p substring("Howdy partner, sit down! How's it going?", dictionary)
