class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :qualifications, :string
    add_column :users, :experience, :string
  end
end
