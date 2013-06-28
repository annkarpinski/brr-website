class CreateBlogForumPosts < ActiveRecord::Migration
  def change
    create_table :blog_forum_posts do |t|
      t.integer :member_id
      t.string :where_to_post
      t.string :subject
      t.datetime :date_posted
      t.text :content

      t.timestamps
    end
  end
end
