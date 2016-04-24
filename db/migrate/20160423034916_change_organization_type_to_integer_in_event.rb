class ChangeOrganizationTypeToIntegerInEvent < ActiveRecord::Migration
  def change
  	change_column :events, :organization, 'integer USING CAST(organization AS integer)'
  end
end
