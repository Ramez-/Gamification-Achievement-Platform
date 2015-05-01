class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update]
  before_action :get_user
  before_action :check_auth
  # GET /games
  # GET /games.json
  def index
      @games = @user.games
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @games}
    end
  end


  def check_auth
    if @user.id != current_user.id || @user.id = nil
      redirect_to root_path , alert: "Can't Access A Game That Does not belong to you."
    end
  end

  def get_user
    @user = User.find(params[:user_id])
  end
  # GET /games/1
  # GET /games/1.json
  def show
    @value_metrics = @game.value_metrics
    @state_metrics = @game.state_metrics
    @events = @game.events
  end

  # GET /games/new
  def new
    @game = @user.games.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = @user.games.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to [@user , @game], notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to [@user, @game], notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url , notice: 'Game was successfully deleted.' }
      format.json { head :no_content }
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :game_id, :game_timezone, :url, :logo, :description, :photo)
    end
end