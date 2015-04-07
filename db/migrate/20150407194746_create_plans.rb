class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
