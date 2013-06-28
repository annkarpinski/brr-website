class CreateVolunteerEvents < ActiveRecord::Migration
  def change
    create_table :volunteer_events do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
