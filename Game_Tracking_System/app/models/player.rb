#joining with table game
#creating validation as player_id must be unique and present
#player id could represent the name of the player or his id number anything the user spacify 
class Player < ActiveRecord::Base
	validates :player_id,
           presence: true,
           uniqueness: true
	belongs_to :game
end
