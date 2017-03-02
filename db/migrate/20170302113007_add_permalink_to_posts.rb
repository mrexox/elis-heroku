class AddPermalinkToPosts < ActiveRecord::Migration[5.0]
  def up
    add_column 'posts', 'permalink', :string
  end

  def down
    remove_column 'posts', 'permalink'
  end
end
