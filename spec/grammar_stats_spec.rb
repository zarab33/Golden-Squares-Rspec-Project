require 'grammar_stats'

RSpec.describe GrammarStats do
    describe "#check" do
        it "returns true once it checks the letters" do
            stats = GrammarStats.new 
            expect(stats.check("Hello world.")).to eq true
        end
    end
end