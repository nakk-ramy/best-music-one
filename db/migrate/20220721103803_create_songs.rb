class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.text       :title,  null: false
      t.string     :artist, null: false
      t.string     :genre
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
