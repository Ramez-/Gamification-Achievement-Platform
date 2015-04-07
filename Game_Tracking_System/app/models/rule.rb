class Rule < ActiveRecord::Base
	belongs_to :game
	has_one :metric
end
