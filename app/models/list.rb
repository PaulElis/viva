class List < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_many :list_comments



  accepts_nested_attributes_for :activity, reject_if: :all_blank

  def map_location
   place = String.new(self.location)
   place.gsub!(/\W+/,'+')
   return place
  end

end
