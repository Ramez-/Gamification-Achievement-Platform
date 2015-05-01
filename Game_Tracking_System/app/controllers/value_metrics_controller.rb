class ValueMetricsController < ApplicationController
  before_action :set_value_metric, only: [:show, :edit, :update, :destroy]
  before_action :get_user_game
  before_action :check_auth
  # GET /value_metrics
  # GET /value_metrics.json
  def index
    @value_metrics = @game.value_metrics
  end

  # GET /value_metrics/1
  # GET /value_metrics/1.json
  def show
  end

  def get_user_game
    @user = User.find(params[:user_id])
    @game = @user.games.find(params[:game_id])
  end

  # GET /value_metrics/new
  def new
    @value_metric = @game.value_metrics.new
  end


  # Check if the current user is logged in and is the owner of the game
  def check_auth
    if current_user == nil || @user.id != current_user.id
      redirect_to root_path , alert: "Can't Access A Game That Does not belong to you."
    end
  end


  # GET /value_metrics/1/edit
  def edit
  end

  # POST /value_metrics
  # POST /value_metrics.json
  def create
    @value_metric = @game.value_metrics.new(value_metric_params)
    metric = Metric.new
    metric.metric_type = 1
    metric.game_id = @game.id
    metric.name = @value_metric.name
    metric.save
    @value_metric.metric_id = metric.id
    respond_to do |format|
      if @value_metric.save
        metric.metric_id = @value_metric.id
        metric.save
        format.html { redirect_to [@user , @game, @value_metric] , notice: 'Value metric was successfully created.' }
        format.json { render :show, status: :created, location: @value_metric }
      else
        format.html { render :new }
        format.json { render json: @value_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /value_metrics/1
  # PATCH/PUT /value_metrics/1.json
  def update
    respond_to do |format|
      if @value_metric.update(value_metric_params)
        format.html { redirect_to [@user , @game , @value_metric], notice: 'Value metric was successfully updated.' }
        format.json { render :show, status: :ok, location: @value_metric }
      else
        format.html { render :edit }
        format.json { render json: @value_metric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /value_metrics/1
  # DELETE /value_metrics/1.json
  def destroy
    Metric.find_by_metric_id(@value_metric.id).destroy
    #Metric.find(idx).destroy
    @value_metric.destroy
    respond_to do |format|
      format.html { redirect_to @game, notice: 'Value metric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value_metric
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:game_id])
      @value_metric = @game.value_metrics.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def value_metric_params
      params.require(:value_metric).permit(:min, :start, :max, :name , :description)
    end
end
