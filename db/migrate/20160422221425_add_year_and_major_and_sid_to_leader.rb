class AddYearAndMajorAndSidToLeader < ActiveRecord::Migration
  def change
    add_column :leaders, :year, :integer
    add_column :leaders, :major, :string
    add_column :leaders, :SID, :integer
  end
end
