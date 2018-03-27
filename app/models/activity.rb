class Activity < ApplicationRecord
  has_many :lists
  has_many :users, through: :lists

  validates :category, presence: true




end
