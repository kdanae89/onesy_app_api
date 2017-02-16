class Ledger < ApplicationRecord
  belongs_to :image
  belongs_to :onesy

  validates_uniqueness_of: :image_id, scope: :onesy_id
end
  validates_uniqueness_of: :onesy_id, scope: :image_id
end
end
