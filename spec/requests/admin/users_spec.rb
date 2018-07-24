# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { create(:user) }
  let(:admin_user) { create(:admin_user) }

  describe 'index' do
    before do
      sign_in admin_user
      get admin_users_path
    end
    it { expect(response).to have_http_status :ok }
  end
end
