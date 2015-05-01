class Rule < ActiveRecord::Base
	has_one :metric
	belongs_to :game
	validates :metric_id, :value , :mtype , presence: true
	belongs_to :requirement

	#validates :value, value: true

end
