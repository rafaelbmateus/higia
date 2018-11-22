class Medicine < ApplicationRecord
  validates :name, presence: true
end