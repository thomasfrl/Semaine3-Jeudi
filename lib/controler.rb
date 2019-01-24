class Controler
	def initialize
		@view = View.new
	end

	def new_player(name_player,i)
		player = Player.new(name_player,i)
		@view.initialization_player(player)
	end

	def initialize_game
		@game = Game.new
		@view.display_game(@game)
	end

	def play(number)
		while check == false
			selection = @view.select_case(number)
			check = @game.check_possibility(selection)
		end
		@game.play(selection[0],selection[1],number)
		@view.display_game(@game.board)
		@game.check_victory(number)
	end

end