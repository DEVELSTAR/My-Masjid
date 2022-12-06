class AddMoreFieldsToMasjids < ActiveRecord::Migration[7.0]
  def change
    add_column :masjids, :mutawalli, :string
    add_column :masjids, :imam, :string
  end
end
