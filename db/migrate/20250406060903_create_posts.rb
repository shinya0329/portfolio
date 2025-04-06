class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :shop_name
      t.text :caption
      t.integer :user_id
      t.string :image_id
      t.string :category

      t.timestamps
    end
  end
end
