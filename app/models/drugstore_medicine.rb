class DrugstoreMedicine < ApplicationRecord
  belongs_to :drugstore
  belongs_to :medicine

  validates :price, presence: true
end
