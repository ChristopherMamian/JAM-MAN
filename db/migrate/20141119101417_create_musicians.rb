class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :location
      t.string :commitment
      t.string :schedule
      t.string :bio
      t.string :portfolio
      t.string :jam_location
      t.timestamps
    end
  end
end
