class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :name
      t.text :bio
      t.string :webpage
      t.belongs_to :reading
      t.timestamps
    end
  end
end
