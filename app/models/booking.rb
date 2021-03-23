class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :box

  validates :start_at, :end_at, presence: true
end
