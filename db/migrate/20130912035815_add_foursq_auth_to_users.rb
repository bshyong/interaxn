class AddFoursqAuthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :foursq_auth, :string
  end
end
