require "dictionary"
require "rspec"
require "pry"


describe Word do
    describe "#initialize"
    it "initialise a new instance of Word and child object definition" do
        test_word = Word.new("word", "definition")
        expect(test_word.definition_instance.word_definition).to(eq("definition"))
    end
end