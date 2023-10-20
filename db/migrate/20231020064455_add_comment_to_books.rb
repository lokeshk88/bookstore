class AddCommentToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :comment, :text
  end
end
