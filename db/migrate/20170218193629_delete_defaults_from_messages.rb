# coding: utf-8
class DeleteDefaultsFromMessages < ActiveRecord::Migration[5.0]
  def up
    remove_column 'messages', 'name'
    remove_column 'messages', 'theme'
    add_column 'messages', 'name', :string
    add_column 'messages', 'theme', :string
  end

  def down
    remove_column 'messages', 'name'
    remove_column 'messages', 'theme'
    add_column 'messages', 'name', :string, :default => 'Аноним'
    add_column 'messages', 'theme', :string, :default => 'Хочу заказать одну штучку'
  end
end
