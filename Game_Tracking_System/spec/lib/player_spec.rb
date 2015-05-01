require "spec_helper"
require "player"

describe Player do
 
 it "is named Jim" do

 	player = Player.new
 	player.player_id.should =="Jim"
 end

 it "is not named JIM" do
 	player = Player.new
 	player.player_id.should_not == "JIM"
 	
 end
 
end