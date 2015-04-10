class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.integer :type
      t.integer :game_id
    end
  end
end
