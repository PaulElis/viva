class Comment < ApplicationRecord
  has_many :user_comments
  has_many :list_comments
end
