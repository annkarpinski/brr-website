class BlogForumPostComment < ActiveRecord::Base
  attr_accessible :blog_forum_post_id, :content, :date_commented, :member_id
  belongs_to :members
  belongs_to :blog_forum_posts
  validates_presence_of :content
end
