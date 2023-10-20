class AddLikesToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :likes, :integer
  end
end
