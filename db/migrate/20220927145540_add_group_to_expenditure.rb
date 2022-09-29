class AddGroupToExpenditure < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditures, :group, null: false, foreign_key: true
  end
end
