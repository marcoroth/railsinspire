class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :samples
  has_one_attached :avatar

  validates :username, presence: true, username: true, uniqueness: true
end
