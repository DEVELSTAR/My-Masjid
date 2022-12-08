class CreateBethhs < ActiveRecord::Migration[7.0]
  def change
    create_table :bethhs do |t|
      t.string :munji
      t.string :gehun
      t.date :filling_date
      t.string :comments
      t.references :masjids_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
