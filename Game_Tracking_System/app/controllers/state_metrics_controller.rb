class StateMetricsController < ApplicationController
  before_action :set_state_metric, only: [:show, :edit, :update, :destroy]
  before_action :get_user_game
  before_action :check_auth
  # GET /state_metrics
  # GET /state_metrics.json
  def index
    @state_metrics = @game.state_metrics
  end

  # GET /state_metrics/1
  # GET /state_metrics/1.json
  def show
  end

  def get_user_game
    @user = User.find(params[:user_id])
    @game = @user.games.find(params[:game_id])
  end
  # GET /state_metrics/new
  def new
    @state_metric = @game.state_metrics.new
  end

  def check_auth
    if @user.id != current_user.id || @user.id = nil
      redirect_to root_path , alert: "Can't Access A Game That Does not belong to you."
    end
  end

  # GET /state_metrics/1/edit
  def edit
  end

  # POST /state_metrics
  # POST /state_metrics.json
  def create
    @state_metric = @game.state_metrics.new(state_metric_params)
    metric = Metric.new
    metric.metric_type = 2
    metric.game_id = @game.id
    if metric.save
      @state_metric.metric_id = metric.id
      respond_to do |format|
        if @state_metric.save
         format.html { redirect_to  [@user , @game, @state_metric], notice: 'State metric was successfully created.' }
          format.json { render :show, status: :created, location: @state_metric }
        else
          format.html { render :new }
          format.json { render json: @state_metric.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /state_metrics/1
  # PATCH/PUT /state_metrics/1.json
  def update
    respond_to do |format|
      if @state_metric.update(state_metric_params)
        format.html { redirect_to  [@user , @game, @state_metric], notice: 'State metric was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_metric }
      else
        format.html { render :edit }
        format.json { render json: @state_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_metrics/1
  # DELETE /state_metrics/1.json
  def destroy
    Metric.find_by_metric_id(@state_metric.id).destroy
    @state_metric.destroy
    respond_to do |format|
      format.html { redirect_to @game, notice: 'State metric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_metric
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:game_id])
      @state_metric = @game.state_metrics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_metric_params
      params.require(:state_metric).permit(:name, :description, :state)
    end
end
