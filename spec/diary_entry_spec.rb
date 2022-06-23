require 'diary_entry'

RSpec.describe "test diary_entry class" do
  it "Returns title of diary entry" do
    entry = DiaryEntry.new("title", "contents")
    expect(entry.title).to eq "title"
  end
  it "Returns contents of diary entry" do
    entry = DiaryEntry.new("title", "contents")
    expect(entry.contents).to eq "contents"
  end
  it "Returns number of words in diary entry" do
    entry = DiaryEntry.new("title", "contents contents contents")
    expect(entry.count_words).to eq 3
  end
  it "Returns number of words in diary entry" do
    entry = DiaryEntry.new("title", "anything " * 300)
    expect(entry.reading_time(150)).to eq 2
  end
  it "Returns contents depending on wpm and time to read" do
    entry = DiaryEntry.new("title", "anything " * 100)
    expect(entry.reading_chunk(20, 4)).to eq "anything " * 79 + "anything"
  end
  it "Returns contents incrementally when method runs multiple times" do
    entry = DiaryEntry.new("title", "hello there my name is jordan markham")
    entry.reading_chunk(1, 1)
    entry.reading_chunk(1, 1)
    entry.reading_chunk(1, 3)
    expect(entry.reading_chunk(1, 2)).to eq "jordan markham"
  end
end