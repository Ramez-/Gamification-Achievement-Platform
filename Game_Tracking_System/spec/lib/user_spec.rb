require "spec_helper"
require "user"
describe User do
	it "is named ramez" do
		user = User.new
		user.name.should == 'ramez'
	end
end