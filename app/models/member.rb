class Member < ActiveRecord::Base
  attr_accessible :first_name, :middle_name, :last_name, :address1, :address2, :city, :state, :zip_code,
   :phone1, :phone2, :email, :gender, :birth_date, :member_level, :member_since, 
   :membership_expires, :reward_points, :can_post, :admin, :password, :password_confirmation
  has_many :blog_forum_posts
  has_many :blog_forum_posts_comments
  has_and_belongs_to_many :volunteer_events
  has_many :rewards
  has_many :races, :through => :members_races
  validates_presence_of :first_name, :last_name, :address1, :city, :state, :zip_code, :phone1, 
  :email, :gender, :birth_date
  validates_uniqueness_of :email
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  has_secure_password
end
