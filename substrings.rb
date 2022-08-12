  #the #scan method seems to be the best way for
  #me to see if the words match. 

  #other methods that i tried: #include?, #tally, #map, #uniq, #count

freewill_rush = [
  "You", "can", "choose", "a", "ready", "guide", 
  "in", "some", "celestial", "voice",
  "If", "you", "choose", "not", "to", "decide", 
  "you", "still", "have", "made", "a", "choice",
  "You", "can", "choose", "from", "phantom", "fears", 
  "and", "kindness", "that", "can", "kill",
  "I", "will", "choose", "a", "path", "that's", "clear", 
  "I", "will", "choose", "freewill!"
]

dictionary = [
  "below","down","go","going","horn",
  "how","howdy","it","i","low","own",
  "part","partner","sit"]


def substrings (string, array)
    substring = Hash.new(0)
    array.each do |word| 
      substring[word] = string.downcase.scan(/.../).count if string.downcase.include?(word)
    end
    substring
end

substrings("ChOoSe fReEwILl!", freewill_rush)
substrings("kindness always wins", freewill_rush)
substrings("below", dictionary)
substrings("howdy y'all!", dictionary)