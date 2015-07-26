class CreateCmsParishes < ActiveRecord::Migration
  def change
    create_table :cms_parishes do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :priest
      t.text :content
      t.boolean :publish
      t.string :thumb
      t.string :thumbnail
      t.boolean :thumbnail_active
      t.text :resume

      t.timestamps null: false
    end
  end
end
