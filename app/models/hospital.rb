class Hospital < ApplicationRecord
  validates :name, presence: true
  validates :phone, presence: true
  validates :cep, presence: true
end