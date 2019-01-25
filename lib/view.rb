class View
	#affiche les informations du joueur à l'écran
	def initialization_player(player)
		puts "Bravo! Le jouueur #{player.number} a été créé"
		puts "Son nom est #{player.name_player}"
	end

	#affiche le morpion
	def display_game(game, position =[1,1])
		system ('clear')
		puts "  || A || B || C |"
		puts "-"*18
		3.times do |i|
			print "#{i+1} |"
			3.times do |j|
				if i == position[0] && j == position[1]
					print "|".red
				else
					print "|"
				end

				if game[i][j] == 1
					print " x " 
				elsif game[i][j] == 2
					print " 0 "
				else
					print "   "
				end
				if i == position[0] && j == position[1]
					print "|".red
				else
					print "|"
				end

			end
			puts "\n" + "-"*18	
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

	def select_advanced (number,game)
		position = [1,1]
		display_game(game)
		puts "C'est au joueur #{number} de jouer"
		puts "Veuillez indiquer la case où vous voulez jouer"

		selected = false
		while selected == false
			char = read_char
			case char
			when "\e[B"
				# "DOWN ARROW"
				position[0] +=1
				position[0] = 2 if position[0] > 2
				display_game(game,position)
			when "\e[A"
				#"UP ARROW"
				position[0] -=1
				position[0] = 0 if position[0] < 0
				display_game(game,position)
			when "\e[C"
				# "RIGHT ARROW"
				position[1] +=1
				position[1] = 2 if position[1] > 2
				display_game(game,position)
			when "\e[D"
				# "LEFT ARROW"
				position[1] -=1
				position[1] = 0 if position[1] < 0
				display_game(game,position)
			when "\u0003"
				exit 0
			when "\r"
				selected = true
				return position	
			end	
		end
	end

	def read_char
		STDIN.echo = false
		STDIN.raw!

		input = STDIN.getc.chr
		if input == "\e" then
			input << STDIN.read_nonblock(3) rescue nil
			input << STDIN.read_nonblock(2) rescue nil
		end
	ensure
		STDIN.echo = true
		STDIN.cooked!

		return input
	end

end

