class AddSubAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :sub_admin, :string
  end
end
