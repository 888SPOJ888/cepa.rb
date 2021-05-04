class AddAdminToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user, :string
    add_column :users, :admin, :boolean, default: false
  end
end
