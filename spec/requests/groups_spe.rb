require 'rails_helper'

RSpRSpec.describe 'Groups', type: :request do
  describe 'User requests' do
    it 'renders the index template' do
      user = FactoryBot.create(:user)
      user.save
      login_as(user, scope: :user)
      get "/users/#{user.id}/groups"
      expect(response).to render_template('index')
    end
  end
end
