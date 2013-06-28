class Reward < ActiveRecord::Base
  attr_accessible :activity_description, :member_id, :points, :volunteer_event_id
  belongs_to :members
  belongs_to :volunteer_events
  validates_presence_of :member_id, :volunteer_event_id, :activity_description, :points
end
