class UserComment < ApplicationRecord
  belongs_to :posted_id
  belongs_to :received_id
end
