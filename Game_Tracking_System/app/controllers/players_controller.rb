#this class represent the player 
class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]
  before_action :get_user_game

  # GET /players
  # GET /players.json
  # for showing all players
  def index
    @players = Player.all
  end

  def get_user_game
    @user = User.find(params[:user_id])
    @game = @user.games.find(params[:game_id])
  end

  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
 

  # POST /players
  # POST /players.json
  # creating new player then render to the this player page
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to [@user, @game, @player], notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json

  # DELETE /players/1
  # DELETE /players/1.json
  # Deleting player then go then go to the players page
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to [@user, @game, @player], notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:game_id])
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:player_id)
    end
end
