#joining with table game
#creating validation as player_id must be unique and present
class Player < ActiveRecord::Base
	validates :player_id,
           presence: true,
           uniqueness: true
	belongs_to :game
end
