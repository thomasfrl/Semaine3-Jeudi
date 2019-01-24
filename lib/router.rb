class Router
	def initialize
		@controller = Controler.new
	end

	def perform
		puts "BIENVENUE DANS LE JEUX DU MORPION"
		puts
    puts "Commençons par créer les deux joueurs"
    puts "Quel est le nom du joueur 1 ?"
    print ">"
    name_player_1 = gets.chomp
    puts "Quel est le nom du joueur 2 ?"
    print ">"
    name_player_2 = gets.chomp

    player1 = @controller.new_player(name_player_1,1)
    player2 = @controller.new_player(name_player_2,2)

    puts "Nous allons pouvoir commencer la partie"
    puts
    @controller.initialize_game
    number = 1

    while true
    	@controller.play(number)
    	number == 1 ? number = 2 : number = 1
    end

	end
end