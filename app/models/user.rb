class User < ApplicationRecord
  has_secure_password
  has_many :lists
  has_many :activities, through: :lists
  has_many :user_comments
  has_many :comments, through: :user_comments
end
