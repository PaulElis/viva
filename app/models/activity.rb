class Activity < ApplicationRecord
  has_many :lists
  has_many :users, through: :lists

  validates :name, presence: true
  validates :description, length: [minimum: 3]



end
