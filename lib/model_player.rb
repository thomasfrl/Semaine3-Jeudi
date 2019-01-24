class Player
	attr_reader :name_player, :number
	attr_accessor :@@players = []
	def initialize(name_player,number)
		@name_player = name_player
		@number = number
		@@players << self
	end

end