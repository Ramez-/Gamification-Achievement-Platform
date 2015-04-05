class ValueMetricsController < ApplicationController
  before_action :set_value_metric, only: [:show, :edit, :update, :destroy]

  # GET /value_metrics
  # GET /value_metrics.json
  def index
    @value_metrics = ValueMetric.all
  end

  # GET /value_metrics/1
  # GET /value_metrics/1.json
  def show
  end

  # GET /value_metrics/new
  def new
    @value_metric = ValueMetric.new
  end

  # GET /value_metrics/1/edit
  def edit
  end

  # POST /value_metrics
  # POST /value_metrics.json
  def create
    @value_metric = ValueMetric.new(value_metric_params)

    respond_to do |format|
      if @value_metric.save
        format.html { redirect_to @value_metric, notice: 'Value metric was successfully created.' }
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
        format.html { redirect_to @value_metric, notice: 'Value metric was successfully updated.' }
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
    @value_metric.destroy
    respond_to do |format|
      format.html { redirect_to value_metrics_url, notice: 'Value metric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_value_metric
      @value_metric = ValueMetric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def value_metric_params
      params.require(:value_metric).permit(:metric_id, :min, :start, :max)
    end
end
