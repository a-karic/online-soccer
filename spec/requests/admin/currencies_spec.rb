# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin - Users', type: :request do
  let(:other_user) { create(:user) }
  let(:admin_user) { create(:admin_user) }
  let!(:logged_user) { sign_in admin_user }

  describe 'GET index' do
    before { get admin_currencies_path }
    it_behaves_like 'loaded page'
  end
end
