require 'test_helper'

class StateMetricsControllerTest < ActionController::TestCase
  setup do
    @state_metric = state_metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create state_metric" do
    assert_difference('StateMetric.count') do
      post :create, state_metric: { description: @state_metric.description, metric_id: @state_metric.metric_id, name: @state_metric.name, state: @state_metric.state }
    end

    assert_redirected_to state_metric_path(assigns(:state_metric))
  end

  test "should show state_metric" do
    get :show, id: @state_metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @state_metric
    assert_response :success
  end

  test "should update state_metric" do
    patch :update, id: @state_metric, state_metric: { description: @state_metric.description, metric_id: @state_metric.metric_id, name: @state_metric.name, state: @state_metric.state }
    assert_redirected_to state_metric_path(assigns(:state_metric))
  end

  test "should destroy state_metric" do
    assert_difference('StateMetric.count', -1) do
      delete :destroy, id: @state_metric
    end

    assert_redirected_to state_metrics_path
  end
end
