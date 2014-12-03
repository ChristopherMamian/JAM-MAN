class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :location
      t.string :commitment
      t.string :bio
      t.string :portfolio
      t.timestamps
    end
  end
end
