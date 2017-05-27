class Word

	@@dictionary = []

	attr_accessor :definitions, :word

	def initialize(word, word_definition)
		self.word = word
		self.definitions = [Definition.new(word_definition)]
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

	def self.search(word_to_search)
		@@dictionary.each do |word_instance|
			if word_instance.word == word_to_search
				return word_instance
			else
				nil
			end
		end
	end

	def new_definition(new_word_definition)
		self.definitions.push(Definition.new(new_word_definition))
	end
end


class Definition

	attr_accessor :word_definition

	def initialize(word_definition)
		self.word_definition = word_definition
	end
end