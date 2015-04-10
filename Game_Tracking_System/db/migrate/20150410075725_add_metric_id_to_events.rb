class AddMetricIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :metric_id, :integer
  end
end
