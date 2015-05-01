class ValueValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    #unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    #  record.errors[attribute] << (options[:message] || "wrong email address")
    # if(record.mtype == 1)
  	# 	if(value  = /\A[-+]?[0-9]*\.?[0-9]+\Z/)
   	#    	record.errors[attribute] << (options[:message] || " field should be numeric , this is a valu metric")
    # 	end
   	

   	#	@vara = record.metric_id
    #	metric = ValueMetric.find(@vara)
    #	@minvar = metric.min
    #	@maxvar = metric.max

     #	if (value > @maxvar || value < @minvar)
      # 	 	record.errors[attribute] << (options[:message] || "The value should not exceed the minimum and the maximum boundaries")
     #	end
 	

   	end
  end
end


