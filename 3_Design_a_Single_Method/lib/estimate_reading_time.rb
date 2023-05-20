def estimate_reading_time(text)
    words_per_minute = 200
    words_count = text.split.size
    (words_count.to_f / words_per_minute).ceil
  end
  