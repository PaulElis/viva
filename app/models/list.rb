class List < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :list_comments
end
