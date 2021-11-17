class AddUserIdToMemos < ActiveRecord::Migration[6.1]
  def change
    add_column :memos, :user_id, :integer
  end
end
