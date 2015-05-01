class Rule
  attr_accessor :metric_id,:value,:operation

  	def initialize
  		@metric_id = 1
  		@value = '32'
  		@operation='>'
   end
end