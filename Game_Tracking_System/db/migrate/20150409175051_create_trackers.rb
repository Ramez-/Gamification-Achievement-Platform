class CreateTrackers < ActiveRecord::Migration
  def change
    create_table :trackers do |t|
      t.integer :Playerid
      t.integer :metricid
      t.integer :value

      t.timestamps null: false
    end
  end
end
