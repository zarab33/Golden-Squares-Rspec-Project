require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "returns an empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end

  it "given a string of five words it returns" do
    result = make_snippet("five six seven eight nine")
    expect(result).to eq "five six seven eight nine" 
  end

  it "given a string of six words it returns" do
    result = make_snippet("five six seven eight nine ten")
    expect(result).to eq "five six seven eight nine ..."
  end
end