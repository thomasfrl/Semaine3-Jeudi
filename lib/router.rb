
class Router
	def initialize
		@controller = Controler.new
	end

	def perform
		#demande d'initialiser les joueurs
		puts "BIENVENUE DANS LE JEUX DU MORPION"
		puts
		puts "Commençons par créer les deux joueurs"
		puts "Quel est le nom du joueur 1 ?"
		print ">"..
		name_player_1 = gets.chomp
		puts "Quel est le nom du joueur 2 ?"
		print ">"
		name_player_2 = gets.chomp

		player1 = @controller.new_player(name_player_1,1)
		player2 = @controller.new_player(name_player_2,2)

		puts "Nous allons pouvoir commencer la partie"
		puts

		#initialize le jeux
		@controller.initialize_game

		#fait jouer les joueurs à tour de rôle jusqu'à la victoire de l'un des deux où un match nul
		number = 1
		end_game = false
		number_play = 0
		while end_game == false && number_play < 9
			end_game = @controller.play(number)
			number == 1 ? number = 2 : number = 1
			number_play +=1
		end
		
		#affiche le résultat de la partie
		if end_game == true
			puts "le joueur #{number} a perdu"
		else
			puts "Personne n'a gagné, c'est un match nul"
		end
		puts "La partie est finie"
	end
end

