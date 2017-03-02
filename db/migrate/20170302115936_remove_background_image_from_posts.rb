class RemoveBackgroundImageFromPosts < ActiveRecord::Migration[5.0]
  def up
    remove_column 'posts', 'background_image'
  end

  def down
    add_column 'posts', 'background_image', :string

  end
end
