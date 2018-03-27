class User < ApplicationRecord
  has_secure_password
  has_many :lists
  has_many :activities, through: :lists
  has_many :user_comments
  has_many :comments, through: :user_comments

  validates :username, uniqueness: true
  validates :username, length: {in: 4..15}
  validates :password, length: {in: 4..20}


end
