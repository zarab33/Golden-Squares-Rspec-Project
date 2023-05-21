describe "phone number extraction behaviour" do
         it "extracts phone numbers from all diary entries" do
             diary = Diary.new
             phone_book = PhonenumberExtractor.new(diary)
             diary.add(DiaryEntry.new("title0","my friend is cool"))
             diary.add(DiaryEntry.new("title1","my friend 07800000000 is cool"))
             diary.add(DiaryEntry.new("title0","my friends 07800000000, 07800000001, 07800000002 are cool"))
             expect(phone_book.extract_numbers).to eq [
                 "07800000000",
                 "07800000001",
                 "07800000002"
             ]
         end

        it "doesn't extract invalid numbers" do
             diary = Diary.new
             phone_book = PhonenumberExtractor.new(diary)
             diary.add(DiaryEntry.new("title0","my friends 078000000, 780000000111, 08000000010 are cool"))
             expect(phone_book.extract_numbers).to eq []

         end
         
        it "doesn't extract invalid numbers" do
             diary = Diary.new
             phone_book = PhonenumberExtractor.new(diary)
             diary.add(DiaryEntry.new("title0","my friends 078000000, 780000000111, 08000000010 are cool"))
             expect(phone_book.extract_numbers).to eq []

         end


     end