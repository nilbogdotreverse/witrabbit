class CreateReadings < ActiveRecord::Migration

  def change
    create_table :readings do |t|
      t.string :title
      t.text :description
      t.string :fb_link
      t.datetime :date
      t.string :flyer
      t.timestamps
    end
  end
end
