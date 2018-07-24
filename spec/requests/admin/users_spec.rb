# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Admin - Users', type: :request do
  let(:other_user) { create(:user) }
  let(:user) { create(:admin_user) }

  include_examples 'get have http status ok', [
    {
      name: 'index',
      path: 'admin_users_path',
      authenticate_user: true
    },
    {
      name: 'show',
      path: 'admin_user_path',
      path_params: 'other_user',
      authenticate_user: true
    },
    {
      name: 'edit',
      path: 'edit_admin_user_path',
      path_params: 'other_user',
      authenticate_user: true
    }
  ]
end
