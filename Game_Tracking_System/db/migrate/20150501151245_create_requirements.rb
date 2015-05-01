class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.integer :event_id
      t.integer :rule_id

      t.timestamps null: false
    end
  end
end
