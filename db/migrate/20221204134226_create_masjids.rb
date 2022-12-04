class CreateMasjids < ActiveRecord::Migration[7.0]
  def change
    create_table :masjids do |t|
      t.string :name 
      t.string :city
      t.string :village
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
