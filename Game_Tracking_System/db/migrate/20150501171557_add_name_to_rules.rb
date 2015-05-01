class AddNameToRules < ActiveRecord::Migration
  def change
    add_column :rules, :name, :string
  end
end
