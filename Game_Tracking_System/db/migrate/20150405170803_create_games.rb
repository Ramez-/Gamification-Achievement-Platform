class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :game_id
      t.string :game_timezone
      t.string :url
      t.string :logo
      t.string :description

      t.timestamps null: false
    end
  end
end
