class AddGameIdToStateMetric < ActiveRecord::Migration
  def change
    add_column :state_metrics, :game_id, :integer
  end
end
