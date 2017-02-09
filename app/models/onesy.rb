class Onesy < ApplicationRecord
  has_many :ledgers
  has_many :images, through: :ledgers
end
