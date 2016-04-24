class ChangeStartTimeTypeToIntegerInEvent < ActiveRecord::Migration
  def change
  	change_column :events, :starttime, 'integer USING CAST(starttime AS integer)'
  end
end
