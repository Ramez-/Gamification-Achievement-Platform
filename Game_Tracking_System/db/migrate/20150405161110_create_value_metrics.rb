class CreateValueMetrics < ActiveRecord::Migration
  def change
    create_table :value_metrics do |t|
      t.integer :metric_id
      t.integer :min
      t.integer :start
      t.integer :max

      t.timestamps null: false
    end
  end
end
