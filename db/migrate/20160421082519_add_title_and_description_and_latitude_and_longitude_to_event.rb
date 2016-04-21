class AddTitleAndDescriptionAndLatitudeAndLongitudeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :title, :string
    add_column :events, :description, :text
    add_column :events, :latitude, :float
    add_column :events, :longitude, :float
  end
end
