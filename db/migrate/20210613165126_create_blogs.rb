class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      ## Column
      t.integer :customer_id, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.string :image_id
      t.timestamps
    end
  end
end
