class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.float :longitude
      t.float :latitude
      t.datetime :starttime
      t.text :description

      t.timestamps null: false
    end
  end
end
