class Onesy < ApplicationRecord
  validates :user_id, presence: true
  has_many :ledgers
  has_many :images, through: :ledgers
end
