class AddMetricToRule < ActiveRecord::Migration
  def change
    add_reference :rules, :metric, index: true, foreign_key: true
  end
end

