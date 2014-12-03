class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :technical_proficiency

      t.timestamps
    end
  end
end
