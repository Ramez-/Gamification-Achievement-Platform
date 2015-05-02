class RulesController < ApplicationController
  before_action :set_rule, only: [:show, :edit, :update, :destroy]
  before_action :get_user_game
  before_action :check_auth
  # GET /rules
  # GET /rules.json
  def index
    @rules = @game.rules
  end

  # GET /rules/1
  # GET /rules/1.json
  def show
  end

  # GET /rules/new
  def new
    @rule = @game.rules.new
  end

  def check_auth
    if current_user == nil || @user.id != current_user.id
      redirect_to root_path , alert: "Can't Access A Game That Does not belong to you."
    end
  end

  def get_user_game
    @user = User.find(params[:user_id])
    @game = @user.games.find(params[:game_id])
  end

  # GET /rules/1/edit
  def edit
  end

  # POST /rules
  # POST /rules.json
  def create
    @rule = @game.rules.new(rule_params)
    @vara = @rule.metric_id
    metric = Metric.find(@vara)
    @rule.mtype= metric.metric_type
    respond_to do |format|
      if @rule.save
        format.html { redirect_to [@user , @game, @rule], notice: 'Rule was successfully created.' }
        format.json { render :show, status: :created, location: @rule }
      else
        format.html { render :new }
        format.json { render json: @rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rules/1
  # PATCH/PUT /rules/1.json
  def update
    respond_to do |format|
      if @rule.update(rule_params)
        format.html { redirect_to [@user , @game, @rule], notice: 'Rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @rule }
      else
        format.html { render :edit }
        format.json { render json: @rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rules/1
  # DELETE /rules/1.json
  def destroy
    @rule.destroy
    respond_to do |format|
      format.html { redirect_to @game, notice: 'Rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule
      @user = User.find(params[:user_id])
      @game = @user.games.find(params[:game_id])
      @rule = @game.rules.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rule_params
      params.require(:rule).permit( :value, :operation, :mtype ,:metric_id)
    end
end
