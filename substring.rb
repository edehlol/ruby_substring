dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    
    dictionary_hash = Hash[dictionary.collect {|element| [element, 0]}]
    string = string.downcase
    string = string.split(" ")

    string.each {|word|
        dictionary_hash.each {|key,value|
            if word.include? key
                dictionary_hash[key] += 1
            end
        }
    }
    puts dictionary_hash.select {|key, value| 
        value > 0
    }
end
substrings("Howdy partner, sit down! How's it going?", dictionary)
        
    
    


 






