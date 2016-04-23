class ChangeColumnTypeToCategoryInOrganization < ActiveRecord::Migration
  def change
  	rename_column :organizations, :type, :category
  end
end
