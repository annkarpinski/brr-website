class CreateBlogForumPostComments < ActiveRecord::Migration
  def change
    create_table :blog_forum_post_comments do |t|
      t.integer :member_id
      t.integer :blog_forum_post_id
      t.datetime :date_commented
      t.text :content

      t.timestamps
    end
  end
end
