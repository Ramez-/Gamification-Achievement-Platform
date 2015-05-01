class AddForeignKeyToRule < ActiveRecord::Migration
  def change
  	 add_foreign_key :rules, :metrics
  end
end
