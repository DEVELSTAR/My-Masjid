class CreateMasjidsMember < ActiveRecord::Migration[7.0]
  def change
    create_table :masjids_members do |t|
      t.string :name
      t.string :father_name
      t.references :masjid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
