class AddBackgroundToPost < ActiveRecord::Migration[5.0]
  def up
    add_column 'posts', 'background_image', :string
  end

  def down
    remove_column 'posts', 'background_image'
  end
end
