class Box < ApplicationRecord
  belongs_to :user

  validates :name, :address, :price_per_day, presence: true
end
