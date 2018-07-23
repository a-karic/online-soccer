# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  let(:admin_user) { build(:admin_user) }

  describe 'Factory' do
    it { expect(admin_user).to be_valid }
  end
end
