class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_id
      t.text :event_description
      t.integer :rule_id

      t.timestamps null: false
    end
    add_index :events, :event_id, unique: true
  end
end
