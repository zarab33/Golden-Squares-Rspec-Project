require 'grammar_stats'

RSpec.describe GrammarStats do
    describe "#check" do
        it "returns true once it checks the letters" do
            stats = GrammarStats.new 
            expect(stats.check("Hello world.")).to eq true
        end
    end

        it "empty string returns it fails" do 
            stats = GrammarStats.new 
            expect{ stats.check("") }.to raise_error "Not a sentence."
        end
    
end