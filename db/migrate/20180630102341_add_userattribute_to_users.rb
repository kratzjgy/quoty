class AddUserattributeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :intro, :text
  end
end
