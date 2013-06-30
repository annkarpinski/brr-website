class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :gender
      t.date :birth_date
      t.string :member_level
      t.date :member_since
      t.date :membership_expires
      t.integer :reward_points
      t.boolean :can_post
      t.boolean :admin
      t.boolean :opt_in
      t.string :password_digest
      
      t.timestamps
    end
  end
end
