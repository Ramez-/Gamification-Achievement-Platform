class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :value
      t.string :operation
      t.integer :mtype

      t.timestamps null: false
    end
  end
end
