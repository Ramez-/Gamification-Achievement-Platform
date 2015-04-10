class Game < ActiveRecord::Base
	validates :name, :game_id , :game_timezone,  presence: true
	validates :name, :game_id, uniqueness: true
	#validates :game_id , presence: true , length: { maximum: 50 } ,
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
	has_many :metrics , dependent: :destroy
	has_many :value_metrics , dependent: :destroy
	has_many :state_metrics , dependent: :destroy
	belongs_to :user
	
end