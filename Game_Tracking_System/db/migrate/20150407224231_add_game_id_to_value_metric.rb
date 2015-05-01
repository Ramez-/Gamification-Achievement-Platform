class AddGameIdToValueMetric < ActiveRecord::Migration
  def change
    add_column :value_metrics, :game_id, :integer
  end
end
