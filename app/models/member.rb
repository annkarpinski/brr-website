class Member < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :address1, :address2, :city, :state, :zip_code,
   :home_phone, :mobile_phone, :email_address, :gender, :birth_date, :member_level, :member_since, 
   :membership_expires, :reward_points, :can_post, :admin, :opt_in, :password_digest
  has_many :blog_forum_posts
  has_many :blog_forum_posts_comments
  has_and_belongs_to_many :volunteer_events
  has_many :rewards
  has_many :races, :through => :members_races
end
