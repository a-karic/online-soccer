class Country < ApplicationRecord
  belongs_to :currency

  validates_presence_of :alpha2, :alpha3
end
