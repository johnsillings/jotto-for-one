class Player

	attr_accessor :name

	def initialize
		@name = get_name
	end

	def get_name
		puts "Welcome to 1-player Jotto! What's your name?"
		@name = gets.chomp
		puts "Hey, #{@name}. Cool name."
		puts ""
		@name
	end

end