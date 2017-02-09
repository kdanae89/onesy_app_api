class Image < ApplicationRecord
  has_many :ledgers
  has_many :onesies, through: :ledgers
end
