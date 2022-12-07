class AddImamToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :Hafiz, :boolean
    add_column :users, :kari, :boolean
    add_column :users, :Maulana, :boolean
    add_column :users, :experience, :string
  end
end
