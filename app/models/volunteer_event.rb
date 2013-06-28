class VolunteerEvent < ActiveRecord::Base
  attr_accessible :date, :name
  has_and_belongs_to_many :members
  has_many :rewards
  validates_presence_of :name, :date
end
