class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :member_id
      t.integer :volunteer_event_id
      t.text :activity_description
      t.integer :points

      t.timestamps
    end
  end
end
