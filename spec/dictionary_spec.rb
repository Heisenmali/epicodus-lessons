require "dictionary"
require "rspec"
require "pry"


describe Word do
    describe "#initialize"
    it "initialises a new instance of Word and child object definition" do
        test_word = Word.new("word", "definition")
        expect(test_word.definition_instance.word_definition).to(eq("definition"))
    end

     describe ".all"
    it "returns array set to class variable" do
        test_word = Word.new("word", "definition")
        expect(Word.all).to(eq([]))
    end

    describe "#save"
    it "saves an instance of Word to an array set as class variable" do
        test_word = Word.new("word", "definition")
        test_word.save
        expect(Word.all).to(eq([test_word]))
    end

    describe ".clear"
    it "saves an instance of Word to an array set as class variable" do
        test_word = Word.new("word", "definition")
        test_word.save
        Word.clear
        expect(Word.all).to(eq([]))
    end
end