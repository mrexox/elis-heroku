class CreateSliderItems < ActiveRecord::Migration[5.0]
  def up
    create_table :slider_items do |t|
      t.text :text
      t.string :url
      t.string :image

      t.timestamps
    end
  end

  def down
    drop_table :slider_items
  end
end
