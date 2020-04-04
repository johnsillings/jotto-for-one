require_relative 'player.rb'

class Array
	def difference(other)
	 	copy = dup
		other.each do |e|
			index = copy.rindex(e)
			copy.delete_at(index) if index
		end
		copy
	end
end

class Game
	attr_accessor :player, :secret_word

	def initialize
		@player = nil
		@secret_word = nil
		@guess = nil
		@dictionary = []
		@common_words = []
		@turn_counter = 0
	end

	def setup
		@player = Player.new
		load_dictionaries
		create_secret_word
	end

	def load_dictionaries
		@dictionary = File.open("words.txt", "r").read.split(" ")
		@common_words = File.open("common-words.txt", "r").read.split(" ")
	end

	def create_secret_word
		common_words = @common_words
		@secret_word = common_words.sample
		puts "The computer has selected a secret word. Game on!"
		puts "The secret word is #{@secret_word}."
		@secret_word
	end

	def turn
		@turn_counter += 1
		puts "OK, turn number #{@turn_counter.to_s}. Time to guess a word."
		player_guess
	end

	def player_guess
		@guess = gets.chomp.upcase
		@secret_word = @secret_word

		if real_word(@guess) && valid_length(@guess)
			puts "You guessed #{@guess}."
			compare_guess_and_secret(@guess)
		elsif !valid_length(@guess)
			puts "You can only guess 5-letter words, bucko."
			player_guess
		elsif !real_word(@guess)
			puts "That's not a real word. Try again."
			player_guess
		else
			puts "There was a problem with your guess. Try again."
			player_guess
		end
		puts ""
	end

	def compare_guess_and_secret(guess)
		@guess_array = guess.chars
		@secret_array = @secret_word.chars

		@different_letters = @guess_array.difference(@secret_array)
		@common_letters_count = (5 - @different_letters.size)
		puts "There are #{@common_letters_count} letters in common."
		# puts "The letters that aren't in common are #{@different_letters}."

	end

	def real_word(guess)
		@dictionary.include?(guess)
	end

	def valid_length(guess)
		guess.length == 5
	end

	def display_secret_word
		puts "The secret_word was #{@secret_word}."
	end

	def play
		setup
		while @guess != @secret_word
			turn
		end
		puts "You got it! The word was #{@secret_word}."
		puts "You beat the computer in #{@turn_counter.to_s} turns. Well done!"
	end

end