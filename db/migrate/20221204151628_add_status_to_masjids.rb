class AddStatusToMasjids < ActiveRecord::Migration[7.0]
  def change
    add_column :masjids, :status, :string
  end
end
