class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @content_string = contents
    @num_words_read = 0
  end

  def title
    return @title.to_s
  end

  def contents
    return @content_string.to_s
  end

  def count_words
    return @content_string.split.size
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
    return @content_string.split.size / wpm.to_f
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    words_to_return = wpm * minutes
    if(@num_words_read + words_to_return > @content_string.split.size)
      words_to_return = @content_string.split.size - @num_words_read
    end
    currentText = @content_string.split[@num_words_read..@num_words_read + words_to_return - 1].join(' ')
    @num_words_read += words_to_return
    return currentText

  end
end