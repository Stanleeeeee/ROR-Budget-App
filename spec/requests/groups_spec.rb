require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @user = User.new(name: 'test', email: 'test@gmail.com')
    @group = Group.new(name: 'group', icon: 'group icon', user: @user)
  end

  it 'shows exact name' do
    expect(@group.name).to eql('group')
    expect(@group.icon).to eql('group icon')
  end
  it 'can not create a group without  a name' do
    group = Group.create(icon: 'group icon', name: nil, user: @user.id)
    expect(group).to_not be_valid
  end
  it 'can not create a group without  an icon' do
    group = Group.create(name: 'group ', icon: nil, user: @user.id)
    expect(group).to_not be_valid
  end
end
