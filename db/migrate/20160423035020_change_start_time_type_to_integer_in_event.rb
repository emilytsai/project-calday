class ChangeStartTimeTypeToIntegerInEvent < ActiveRecord::Migration
  def change
  	change_column :events, :starttime, :integer
  end
end
