class CreateMessages < ActiveRecord::Migration[5.0]
  def up
    create_table :messages do |t|
      t.string :name, :default => 'Таинственный Аноним'
      t.string :phone_number
      t.string :email
      t.string :theme, :default => 'Я вас очень люблю!'
      t.text :text

      t.timestamps
    end
  end

  def down
    drop_table :messages
  end
end
