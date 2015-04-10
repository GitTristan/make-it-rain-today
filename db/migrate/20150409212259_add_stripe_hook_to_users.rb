class AddStripeHookToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stripe_webhook, :string

  end
end
