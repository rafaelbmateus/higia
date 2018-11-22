class Medicine < ApplicationRecord
  mount_uploader :medicine, MedicineUploader
  validates :name, presence: true
end