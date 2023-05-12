def estimate_reading_time(text)
    words = text.split(" ")
   if words.length == 0
    return 0
   elsif words.length < 200
    return 1
   end
end