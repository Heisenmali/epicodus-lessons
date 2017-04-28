class Word

    @@dictionary = []

    attr_accessor :definition_instance
    attr_accessor :word

    def initialize(word, word_definition)
        self.word = word
        self.definition_instance = Definition.new(word_definition)
    end

    def save
        @@dictionary.push(self)
    end

    def self.clear
        @@dictionary = []
    end

    def self.all
        @@dictionary
    end
end


class Definition

    attr_accessor :word_definition

    def initialize(word_definition)
        self.word_definition = word_definition
    end
end