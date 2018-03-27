class User < ApplicationRecord
  has_secure_password
  has_many :lists
  has_many :activities, through: :lists
  has_many :posted_comments, :foreign_key => 'posted_id', :class_name => 'UserComment'
  has_many :received_comments, :foreign_key => 'received_id', :class_name => 'UserComment'


  validates :username, uniqueness: true
  validates :username, length: {in: 4..10}
  validates :password, length: {in: 4..10}


end
