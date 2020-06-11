require 'rails_helper'

describe Admin::AccountsController, type: :controller do

  describe 'POST create' do
    it 'should work' do

      user = create(:user, mobile: '15388888888', password: '123456', roles: User::ROLES.keys)
      post :create, params: {mobile: user.mobile, password: user.password}

      expect(response.status).to eq 302
      expect(response).to redirect_to '/admin/'

    end
  end
end