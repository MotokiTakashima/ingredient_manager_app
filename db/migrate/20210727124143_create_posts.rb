class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :product
      t.date :date

      t.timestamps
    end
  end
end
