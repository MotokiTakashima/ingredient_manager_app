class CreatePostGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :post_genres do |t|
      t.references :post, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
