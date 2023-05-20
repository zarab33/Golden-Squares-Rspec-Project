def make_snippet(word)
  split_word = word.split(" ")
  if split_word.length <= 5
  return word
  else 
    result = split_word[0,5].join(" ")
    return result + " ..."
  end
end
