class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :type
      t.integer :gif_collection_id

      t.timestamps null: false
    end
  end
end
