class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :technical_proficiency

      t.timestamps
    end
  end
end
