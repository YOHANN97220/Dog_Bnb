class User < ApplicationRecord
  has_many :boxes, dependent: :destroy
  has_many :bookings

  validates :username, :password, :email, :phonenumber, presence: true
  validates :username, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
