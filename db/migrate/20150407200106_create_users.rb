class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :slack_org
      t.string :slack_webhook
      t.string :slack_channel

      t.timestamps null: false
    end
  end
end
