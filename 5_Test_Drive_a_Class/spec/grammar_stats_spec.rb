require 'grammar_stats'

RSpec.describe GrammarStats do
    describe "#check" do
        it "returns true once it checks the letters" do
            stats = GrammarStats.new 
            expect(stats.check("Howdy people.")).to eq true
        end
    

        it "empty string returns it fails" do 
            stats = GrammarStats.new 
            expect{ stats.check("") }.to raise_error "Not a sentence."
        end
    end

     describe "#percentage_good" do
        it "Returns as an integer the percentage of texts checked so far that passed" do
            stats = GrammarStats.new 
            stats.check("Howdy people.")
            stats.check("Howdy people!")
            stats.check("Howdy people?")
            stats.check("Howdy people")
            stats.check("howdy people")
            expect(stats.percentage_good).to eq 60
        end
    end
end