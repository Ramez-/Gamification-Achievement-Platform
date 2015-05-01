class FixTypeName < ActiveRecord::Migration
  def change
  	rename_column :metrics, :type, :metric_type
  end
end
