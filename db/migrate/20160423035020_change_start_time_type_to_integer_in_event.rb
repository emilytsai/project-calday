class ChangeStartTimeTypeToIntegerInEvent < ActiveRecord::Migration
   def change
   	remove_column :events, :starttime, :datetime
    add_column :events, :starttime, :integer
  end
end
