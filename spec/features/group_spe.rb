require 'spec_helper'
RSpec.describe 'Group integrations', type: :feature do
  it 'renders all groups' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:group, user_id: user.id)
    user.save
    login_as(user, scope: :user)
    visit "/users/#{user.id}/groups"
    expect(page).to have_content('shoes')
  end
  it 'redirects to new group page' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:group, user_id: user.id)
    user.save
    login_as(user, scope: :user)
    visit "/users/#{user.id}/groups"
    click_link 'New Group'
    expect(current_path).to eq("/users/#{user.id}/groups/new")
  end
end
