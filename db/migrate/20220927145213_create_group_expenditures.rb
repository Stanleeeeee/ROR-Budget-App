class CreateGroupExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :group_expenditures, &:timestamps
  end
end
