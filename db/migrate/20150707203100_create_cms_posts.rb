class CreateCmsPosts < ActiveRecord::Migration
  def change
    create_table :cms_posts do |t|
      t.string :title
      t.text :resume
      t.text :content
      t.boolean :publish
      t.boolean :slider
      t.string :thumb
      t.boolean :thumb_active
      t.string :thumbnail
      t.boolean :thumbnail_active
      t.references :post_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
