class ValueMetric < ActiveRecord::Base
	validates :name , :min , :max , presence: true
	validates_uniqueness_of :name
	belongs_to :game
	belongs_to :requirement

end
