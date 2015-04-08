class Event < ActiveRecord::Base
	validates :name,
           presence: true,
           uniqueness: true
     validates :event_id,
           presence: true,
           uniqueness: true
end
