def substring(string, dictionary)
  string = string.downcase
  string_array = string.chars

  dictionary = dictionary.map(&:downcase)

  matches = []
  string_chars = string_array.sort

  dictionary.each do |word|
    word_chars = word.chars.sort
    if (word_chars - string_chars).empty?
      matches << word
    end
  end
  matches_hash = matches.reduce(Hash.new(0))  do |word, count|
    word[count] += 1
    word
  end
  puts matches_hash
end

string = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring(string, dictionary)
