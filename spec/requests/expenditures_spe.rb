require 'rails_helper'

RSpec.describe Expenditure, type: :model do
  before :each do
    @user = User.create(name: 'emeka', email: 'emeka@gmail.com')
    @expense = Expenditure.create(name: 'expense', amount: 45, user: @user.id)
  end

  it 'shows exact name' do
    expect(@expense.name).to eq 'expense'
    expect(@expense.amount).to eql 45
  end
  it 'can not create a expense without  a name' do
    expense = Expenditure.create(amount: 'expense amount', name: nil, user: @user.id)
    expect(expense).to_not be_valid
  end
  it 'can not create a expense without  an amount' do
    expense = Expenditure.create(name: 'expense', amount: nil, user: @user.id)
    expect(expense).to_not be_valid
  end
end
