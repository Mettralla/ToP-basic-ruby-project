def substring(sentence, dictionary, result = Hash.new(0))
    trim_sentence = sentence.gsub(/[!?',<'s>]/, '')
    words = trim_sentence.downcase.split(" ")
    words.each do |word|
        dictionary.each do |key|
            if word.include?(key)
                result[key] += 1 
            end
        end
    end
    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Your sentence contains the following substrings: #{substring("Howdy partner, sit down! How's it going?", dictionary)}"

# =>Your sentence contains the following substrings: {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "down"=>1, "own"=>1, "go"=>1, "going"=>1}