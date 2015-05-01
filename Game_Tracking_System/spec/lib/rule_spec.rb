require "spec_helper"
require "rule"

describe Rule do
 
 it "has metric id = 1" do

 	rule = Rule.new
 	rule.metric_id.should ==1
 end
  it "has a value = 32" do

 	rule = Rule.new
 	rule.value.should =="32"
 end
	it "has operation > " do

 	rule = Rule.new
 	rule.operation.should ==">"
 end
end