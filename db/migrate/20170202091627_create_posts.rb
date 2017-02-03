class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :image_id
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
