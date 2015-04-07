class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :slack_org
      t.integer :plan_id
      t.string :slack_webhook

      t.timestamps null: false
    end
  end
end
