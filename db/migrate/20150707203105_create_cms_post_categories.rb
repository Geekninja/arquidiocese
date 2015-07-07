class CreateCmsPostCategories < ActiveRecord::Migration
  def change
    create_table :cms_post_categories do |t|
      t.string :name
      t.boolean :status
      t.string :description

      t.timestamps null: false
    end
  end
end
