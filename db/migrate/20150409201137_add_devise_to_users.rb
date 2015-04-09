class AddDeviseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :publishable_key, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :access_code, :string
    add_column :users, :email, :string
    add_column :users, :encrypted_password, :string
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime
    add_column :users, :sign_in_count, :integer
    add_column :users, :current_sign_in_at, :datetime
    add_column :users, :last_sign_in_at, :datetime
    add_column :users, :current_sign_in_ip, :inet
    add_column :users, :last_sign_in_ip, :inet

  end
end
