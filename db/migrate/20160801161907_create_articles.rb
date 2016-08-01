class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :email
      t.string :content
      t.integer :price
      t.integer :category_id

      t.timestamps
    end
  end
end
