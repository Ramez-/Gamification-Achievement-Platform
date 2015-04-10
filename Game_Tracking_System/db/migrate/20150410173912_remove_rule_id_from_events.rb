class RemoveRuleIdFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :rule_id, :integer
  end
end
