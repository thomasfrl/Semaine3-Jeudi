class Game
	attr_reader :board

	#initialise un tableau 3x3 rempli de 0
	def initialize
		@board = []
		3.times do |i|
			@board[i] = []
			3.times do
				@board[i] << 0
			end
		end
	end

	#modifie la case du tableau où le joueur a joué
	def play(i,j,number)
		@board[i][j] = number
	end

	#retourne true si victoire sinon false
	def check_victory(number)
		3.times do |i|
			if @board[i][0] == board[i][1] && board[i][1] == board[i][2] && @board[i][0] != 0
				return true
			elsif @board[0][i] == board[1][i] && board[1][i] == board[2][i] && @board[0][i] != 0
				return true
			end
		end
		if @board[2][0] == board[1][1] && board[1][1] == board[0][2]  && @board[0][2] != 0
			return true
		elsif @board[0][0] == board[1][1] && board[1][1] == board[2][2] && @board[2][2] != 0
			return true
		else
			return false
		end
	end

	#retourne true si possible de jouer sur la selection du joueur, false sinon
	def check_possibility(selection)
		if selection[0].class == Integer && selection[1].class == Integer
			if @board[selection[0]][selection[1]] == 0
				return true
			end
		end
		puts "Vous ne pouvez pas selectionner cette case"
		return false
		
	end
end