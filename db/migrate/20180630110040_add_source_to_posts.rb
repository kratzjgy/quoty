class AddSourceToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :source, :text
  end
end
