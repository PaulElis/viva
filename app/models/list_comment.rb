class ListComment < ApplicationRecord
  belongs_to :list
  belongs_to :comment
end
