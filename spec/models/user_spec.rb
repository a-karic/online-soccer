# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  include_examples 'default model tests',
                   instance: 'user',
                   validations: {
                     presence: %i[email password],
                     allow_values: [
                       { value: 'email@addresse.foo', for: :email },
                       { value: '123456', for: :password }
                     ],
                     not_allow_values: [
                       { value: 'emailaddresse.foo', for: :email },
                       { value: '123', for: :password }
                     ]
                   },
                   enum: [
                     { field: :status, values: %i[pending accepted banned] }
                   ],
                   associations: [
                   ]
end
