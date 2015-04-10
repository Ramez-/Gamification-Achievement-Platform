require 'test_helper'

class ValueMetricsControllerTest < ActionController::TestCase
  setup do
    @value_metric = value_metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:value_metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create value_metric" do
    assert_difference('ValueMetric.count') do
      post :create, value_metric: { max: @value_metric.max, metric_id: @value_metric.metric_id, min: @value_metric.min, start: @value_metric.start }
    end

    assert_redirected_to value_metric_path(assigns(:value_metric))
  end

  test "should show value_metric" do
    get :show, id: @value_metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @value_metric
    assert_response :success
  end

  test "should update value_metric" do
    patch :update, id: @value_metric, value_metric: { max: @value_metric.max, metric_id: @value_metric.metric_id, min: @value_metric.min, start: @value_metric.start }
    assert_redirected_to value_metric_path(assigns(:value_metric))
  end

  test "should destroy value_metric" do
    assert_difference('ValueMetric.count', -1) do
      delete :destroy, id: @value_metric
    end

    assert_redirected_to value_metrics_path
  end
end
