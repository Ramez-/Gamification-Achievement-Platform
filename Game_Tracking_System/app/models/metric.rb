class Metric < ActiveRecord::Base
	belongs_to :game
	belongs_to :rule
end