class CreateMembersVolunteerEvents < ActiveRecord::Migration
  def change
    create_table :members_volunteer_events do |t|
      t.integer :member_id
      t.integer :volunteer_event_id

      t.timestamps
    end
  end
end
