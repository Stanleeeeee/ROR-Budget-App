class AddGroupToGroupExpenditure < ActiveRecord::Migration[7.0]
  def change
    add_reference :group_expenditures, :group, null: false, foreign_key: true
  end
end
