class CreateGroupExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :group_expenditures do |t|

      t.timestamps
    end
  end
end
