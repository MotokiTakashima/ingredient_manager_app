class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :product
      t.string :memo
      t.date :start_time

      t.timestamps
    end
  end
end
