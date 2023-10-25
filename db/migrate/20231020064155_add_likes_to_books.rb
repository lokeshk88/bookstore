class AddLikesToBooks < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :likes, :integer
  end
end
