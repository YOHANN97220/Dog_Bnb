class Box < ApplicationRecord
  belongs_to :user

  validates :name, :address, :price_per_day, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
