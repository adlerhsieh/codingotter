class CreateScreencasts < ActiveRecord::Migration[5.2]
  def change
    create_table :screencasts do |t|
      t.string :title
      t.text :video_embed
      t.text :content
      t.integer :training_id
      t.string :slug
      t.date :display_date
      t.string :thumbnail_url
      t.boolean :public
      t.integer :category_id

      t.timestamps
    end

    add_index :screencasts, :training_id
    add_index :screencasts, :category_id
  end
end
