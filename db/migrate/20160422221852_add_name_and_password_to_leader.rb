class AddNameAndPasswordToLeader < ActiveRecord::Migration
    def change
    add_column :leaders, :name, :string
    add_column :leaders, :password, :string
  end
end
