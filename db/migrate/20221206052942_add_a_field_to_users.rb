class AddAFieldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mutawalli, :boolean
  end
end
