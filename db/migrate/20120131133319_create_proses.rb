class CreateProses < ActiveRecord::Migration
  def change
    create_table :proses do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
