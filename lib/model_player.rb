class Player
	attr_reader :name_player, :number
	@@players = []

	#initialise un joueur et le met dans la variable de classe
	def initialize(name_player,number)
		@name_player = name_player
		@number = number
		@@players << self
	end
end