class Requirement < ActiveRecord::Base
	has_many :rule
	has_many :value_metric
	has_many :state_metric
end
