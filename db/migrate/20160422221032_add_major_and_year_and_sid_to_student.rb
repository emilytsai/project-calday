class AddMajorAndYearAndSidToStudent < ActiveRecord::Migration
  def change
    add_column :students, :major, :string
    add_column :students, :year, :integer
    add_column :students, :SID, :integer
  end
end
