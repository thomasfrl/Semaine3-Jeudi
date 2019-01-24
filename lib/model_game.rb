class Game
	attr_reader :board
	def initialize
		@board = []
		3.times do |i|
			@board[i] = []
			3.times do
				@board[i] << 0
			end
		end
	end

	def play(i,j,number)
		@board[i][j] = number
	end

	def check_victory(number)
		
	end

	def check_posibility(selection)
		if @board[i][j] == 0
			return true
		else
			return true
		end
	end
end