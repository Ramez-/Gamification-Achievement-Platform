class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :get_user_game
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  def get_user_game
    @user = User.find(params[:user_id])
    @game = @user.games.find(params[:game_id])
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = @game.events.new
  end

 

  # POST /events
  # POST /events.json
  def create
    @event = @game.events.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to  [@user , @game, @event], notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to @game, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:game_id])
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :event_id, :event_description, :rule_id)
    end
end
