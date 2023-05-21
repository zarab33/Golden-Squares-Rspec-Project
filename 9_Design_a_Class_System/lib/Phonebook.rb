class Phonebook
  def initialize(diary)
    @diary = diary
  end

  def extract_numbers
    @diary.view.flat_map do |contact|
      extract_numbers_from_entry(contact.entry)
    end.uniq
  end

  private

  def extract_numbers_from_entry(entry)
    entry.scan(/07[0-9]{9}/)
  end
end