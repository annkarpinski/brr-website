class BlogForumPost < ActiveRecord::Base
  attr_accessible :content, :date_posted, :member_id, :subject, :where_to_post
  belongs_to :members
  has_many :blog_forum_posts_comments
  validates_presence_of :subject, :content
end
