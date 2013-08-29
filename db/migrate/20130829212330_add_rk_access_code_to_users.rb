class AddRkAccessCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rk_auth, :string
  end
end
