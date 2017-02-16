class AddImageToPosts < ActiveRecord::Migration[5.0]
  
  def up
    remove_column 'posts', 'image_id'
    add_column 'posts', 'image', :string
  end

  def down
    remove_column 'posts', 'image'
    add_column 'posts', 'image_id', :integer
  end
end
