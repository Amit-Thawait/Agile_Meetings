class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :meeting_type_id
      t.date :meeting_date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
