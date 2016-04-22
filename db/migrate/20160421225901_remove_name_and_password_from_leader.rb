class RemoveNameAndPasswordFromLeader < ActiveRecord::Migration
  def change
  	remove_column :leaders, :name
  	remove_column :leaders, :password
  end
end
