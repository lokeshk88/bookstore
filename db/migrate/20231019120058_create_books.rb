class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.date :written_at
      t.integer :user_id

      t.timestamps
    end
  end
end
