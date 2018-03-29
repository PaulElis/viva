class User < ApplicationRecord
  has_secure_password
  has_many :lists
  has_many :activities, through: :lists
  has_many :posted_comments, :foreign_key => 'posted_id', :class_name => 'UserComment'
  has_many :received_comments, :foreign_key => 'received_id', :class_name => 'UserComment'


  validates :username, uniqueness: true
  validates :username, length: {in: 4..15}
  validates :password, length: {in: 4..15}

  def users
    Activity.all.select do |a| a.users.select do |u|
      u == self
      end
    end
  end

  def self.most_activities
    User.all.sort_by{|u| u.users.count}.last
  end

  def self.least_activities
    User.all.sort_by{|u| u.users.count}.first
  end

  def average_activities
    sum = 0
    User.all.each{|u| sum += u.users.count}
    sum / (users.count)
  end

  def self.highest_average_activities
    User.all.sort_by {|u| u.average_activities}.last
  end

  def total_activities
  self.lists.count
  end

  def completed_activities
    count = 0
    self.lists.each do |activities|
      if activities.completed == true
        count +=1
      end
    end
   count
  end

  def completed_activity_percentage
    percent = (completed_activities.to_f/self.total_activities.to_f) * 100
    return "#{percent.round}% of the list completed!"
  end


end
