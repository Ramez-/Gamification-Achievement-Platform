class AddDescriptionToValueMetrics < ActiveRecord::Migration
  def change
    add_column :value_metrics, :name, :string
    add_column :value_metrics, :description, :text
  end
end
