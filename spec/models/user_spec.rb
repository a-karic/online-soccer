# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe 'Factory' do
    it { expect(user).to be_valid }
  end

  describe 'Email Validations' do
    it { should validate_presence_of(:email) }
    it { should allow_value("email@addresse.foo").for(:email) }
    it { should_not allow_value("emailaddresse.foo").for(:email) }
  end

  describe 'Password Validations' do
    it { should validate_presence_of(:password) }
    it { should allow_value('123456').for(:password) }
    it { should_not allow_value('123').for(:password) }
  end

  describe 'Assocciations' do
  end
end
