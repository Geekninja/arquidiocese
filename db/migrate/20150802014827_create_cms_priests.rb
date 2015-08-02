class CreateCmsPriests < ActiveRecord::Migration
  def change
    create_table :cms_priests do |t|
      t.integer :who
      t.boolean :publish
      t.text :content
      t.text :resume
      t.string :title
      t.string :thumb
      t.boolean :thumb_active

      t.timestamps null: false
    end
  end
end
