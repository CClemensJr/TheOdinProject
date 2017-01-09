# Implement a method #substrings that takes a word as the first argument and then
# an array of valid substrings (your dictionary) as the second argument. It
# should return a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.
# Next, make sure your method can handle multiple words:

def substrings string, array
  input_string = string.downcase.scan(/\w+/)
  list_of_substrings = Hash.new

  array.each do |word|
    input_string.each do |input_word|
      if input_word.include?(word)
        list_of_substrings[word] = list_of_substrings[word].to_i + 1
      end
    end
  end

  puts list_of_substrings

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)

#=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3,
# "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
