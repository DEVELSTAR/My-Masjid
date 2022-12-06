class AddSubAdminToMasjids < ActiveRecord::Migration[7.0]
  def change
    add_column :masjids, :sub_admin, :string
  end
end
