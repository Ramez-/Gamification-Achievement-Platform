class ValueMetric < ActiveRecord::Base
	validates :name , :min , :max , presence: true
end
