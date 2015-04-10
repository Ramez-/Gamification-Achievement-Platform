class CreateStateMetrics < ActiveRecord::Migration
  def change
    create_table :state_metrics do |t|
      t.integer :metric_id
      t.string :name
      t.text :description
      t.string :state

      t.timestamps null: false
    end
  end
end
