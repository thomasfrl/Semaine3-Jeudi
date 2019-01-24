def View
	def initializatio_player(player)
		puts "Bravo! Le jouueur #{player.numer} a été créé"
		puts "Son nom est #{player.name}"
	end

	def display_game(game)
		puts "  | A | B | C |"
		puts "-"*15
		3.times do |i|
			print "#{i+1} |"
			3.times do |j|
				if game[i][j] == 1
					print " 1 |" 
				elsif game[i][j] == 2
					print " 2 |"
				else
					print "   |"
				end
			end
			puts "-"*15	
		end
	end

	def select_case
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