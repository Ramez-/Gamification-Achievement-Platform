class Rule < ActiveRecord::Base
	has_one :metric
	belongs_to :game
end
