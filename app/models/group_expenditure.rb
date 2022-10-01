class GroupExpenditure < ApplicationRecord
  belongs_to :group
  belongs_to :expenditure
end
