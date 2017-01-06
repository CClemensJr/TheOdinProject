# Implement a method #substrings that takes a word as the first argument and then
# an array of valid substrings (your dictionary) as the second argument. It
# should return a hash listing each substring (case insensitive) that was found
# in the original string and how many times it was found.

def substrings word, dictionary
  list_of_substrings = {word => dictionary.count(word)}
  puts list_of_substrings

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

substrings("below", dictionary)
