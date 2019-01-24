class View
	#affiche les informations du joueur à l'écran
	def initialization_player(player)
		puts "Bravo! Le jouueur #{player.number} a été créé"
		puts "Son nom est #{player.name_player}"
	end

	#affiche le morpion
	def display_game(game)
		puts "  | A | B | C |"
		puts "-"*15
		3.times do |i|
			print "#{i+1} |"
			3.times do |j|
				if game[i][j] == 1
					print " x |" 
				elsif game[i][j] == 2
					print " 0 |"
				else
					print "   |"
				end
			end
			puts "\n" + "-"*15	
		end
	end

	#demande au joueur de joueur et retourne le résultat
	def select_case(number)
		puts "C'est au joueur #{number} de jouer"
		puts "Veuillez indiquer la case où vous voulez jouer"
		selection = gets.chomp
		if selection =~ /A/i
			j = 0
		elsif selection =~ /B/i
			j = 1
		elsif selection =~ /C/i
			j = 2
		end
		if selection =~ /1/i
			i = 0
		elsif selection =~ /2/i
			i = 1
		elsif selection =~ /3/i
			i = 2
		end
		return [i,j]
	end
end