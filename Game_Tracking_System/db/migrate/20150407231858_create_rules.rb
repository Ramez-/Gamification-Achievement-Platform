class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :metric
      t.string :value
      t.string :operation
      t.integer :type

      t.timestamps null: false
    end
  end
end
