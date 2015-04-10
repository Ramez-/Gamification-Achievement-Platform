class AddMetricIdToMetrics < ActiveRecord::Migration
  def change
    add_column :metrics, :metric_id, :integer
  end
end
