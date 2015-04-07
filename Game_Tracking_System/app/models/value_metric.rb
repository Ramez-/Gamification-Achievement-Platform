class ValueMetric < ActiveRecord::Base
	validates :name , :min , :max , presence: true
	validates_uniqueness_of :name
end
