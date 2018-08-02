require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'Factory' do
    it_behaves_like 'valid factory', factory: :country
  end

  describe 'Validations' do
    it_behaves_like 'validated presences in model', %i[alpha2 alpha3]
  end
end
