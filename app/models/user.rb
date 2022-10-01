class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :confirmable, :rememberable, :validatable
  has_many :expenditures
  has_many :groups

  validates :email, uniqueness: true, length: { in: 5..30 }
  validates :username, uniqueness: true, length: { in: 2..30 }
end
