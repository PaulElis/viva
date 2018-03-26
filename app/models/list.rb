class List < ApplicationRecord
  belongs_to :user
  belongs_to :action
  has_many :list_comments
  has_many :comments, through: :list_comments
end
