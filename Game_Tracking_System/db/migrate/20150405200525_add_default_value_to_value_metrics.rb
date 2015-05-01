class AddDefaultValueToValueMetrics < ActiveRecord::Migration
  def up
    change_column :value_metrics, :start, :integer, :default => 0
  end

  def down
  	change_column :value_metrics, :start, :integer, :default => nil
  end
end
