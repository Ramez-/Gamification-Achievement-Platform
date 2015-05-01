 require 'spec_helper'
 require 'rails_helper.rb'

describe Player do
 it 'is invalid without player_id'  do
 	player = Player.new
 	player.should_not be_valid
 end
end