class AddNameAndPasswordToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :password, :string
  end
end
