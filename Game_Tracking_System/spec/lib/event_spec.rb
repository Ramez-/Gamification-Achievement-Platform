require "spec_helper"
require "event"

describe Event do
 
 it "is named Kill" do

 	event = Event.new
 	event.name.should =="Kill"
 end
  it "is has a description Killing" do

 	event = Event.new
 	event.description.should =="Killing"
 end
	it "is has an event_id = Kill" do

 	event = Event.new
 	event.event_id.should =="Kill"
 end
end