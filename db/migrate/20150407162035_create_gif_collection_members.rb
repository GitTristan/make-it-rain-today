class CreateGifCollectionMembers < ActiveRecord::Migration
  def change
    create_table :gif_collection_members do |t|
      t.integer :gif_collection_id
      t.integer :gif_id

      t.timestamps null: false
    end
  end
end
