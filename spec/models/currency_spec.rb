require 'rails_helper'

RSpec.describe Currency, type: :model do
  describe 'Factory' do
    it_behaves_like 'valid factory', factory: :currency
  end

  describe 'Validations' do
    it_behaves_like 'validated presences in model', %i[name symbol code rate]
  end
end
