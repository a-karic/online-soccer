class Currency < ApplicationRecord
  validates_presence_of :name, :symbol, :code, :rate
end
