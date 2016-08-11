class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :rate
      t.belongs_to :subcategory, index: true

      t.timestamps null: false
    end
  end
end
