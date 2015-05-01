class AddGameIdColumnToRules < ActiveRecord::Migration
  def change
    add_column :rules, :game_id, :integer
  end
end
