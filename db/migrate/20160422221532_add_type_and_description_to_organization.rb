class AddTypeAndDescriptionToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :type, :string
    add_column :organizations, :description, :text
  end
end
