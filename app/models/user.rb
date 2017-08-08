class User < ActiveRecord::Base
  attr_writer :mood

  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides

  validates_presence_of :name

  def mood
    if (self.nausea > self.happiness)
      self.mood = "sad"
    else
      self.mood = "happy"
    end
  end
end
