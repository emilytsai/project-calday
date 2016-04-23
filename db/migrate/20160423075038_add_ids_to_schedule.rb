class AddIdsToSchedule < ActiveRecord::Migration
  def change
  	add_column :schedules, :event_id, :integer
  	add_column :schedules, :student_id, :integer
  end
end
