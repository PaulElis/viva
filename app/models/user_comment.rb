class UserComment < ApplicationRecord
  belongs_to :posted, :class_name => 'User'
  belongs_to :received, :class_name => 'User'
end
