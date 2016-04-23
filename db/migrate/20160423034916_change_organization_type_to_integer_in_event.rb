class ChangeOrganizationTypeToIntegerInEvent < ActiveRecord::Migration
  def change
  	change_column :events, :organization, :integer
  end
end
