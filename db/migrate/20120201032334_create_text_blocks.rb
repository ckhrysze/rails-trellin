class CreateTextBlocks < ActiveRecord::Migration
  def change
    create_table :text_blocks do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
