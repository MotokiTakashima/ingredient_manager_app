class AddUserIdToPostGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :post_genres, :user_id, :integer
  end
end
