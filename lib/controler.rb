class Controler
	def initialize
		@view = View.new
	end
#crée un nouveau joueur et affiche ses informations à l'écran
	def new_player(name_player,i)
		player = Player.new(name_player,i)
		@view.initialization_player(player)
	end

#initialise le jeux et affiche le premier écran
	def initialize_game
		@game = Game.new
		@view.display_game(@game.board)
	end

#fait jouer un joueur, retourne true si victoire du joueur, false sinon
	def play(number)
		check_if_possible = false
		while check_if_possible == false
			#1) lui demande où il veut jouer
			selection = @view.select_case(number)
			#2) vérifie si c'est possible
			check_if_possible = @game.check_possibility(selection)
		end
		#3)modifie l'objet @game en fonction de la selection du joueur
		@game.play(selection[0],selection[1],number)
		#4)affiche le morpion
		@view.display_game(@game.board)
		#5)vérifie si victoire  
		return @game.check_victory(number)
	end
end