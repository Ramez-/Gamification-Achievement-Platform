class StateMetric < ActiveRecord::Base
	validates :name , :state , presence: true
	validates_uniqueness_of :name , :state
	belongs_to :game
end
