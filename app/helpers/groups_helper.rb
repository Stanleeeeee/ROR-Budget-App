module GroupsHelper
  def total_amount_helper(expenditures)
    expenditures.reduce(0) { |sum, expenditure| sum + expenditure.amount }
  end
end
