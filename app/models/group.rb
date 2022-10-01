class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenditures, dependent: :destroy

  validates :name, length: { in: 3..20 }
  validates :icon, presence: true
end
