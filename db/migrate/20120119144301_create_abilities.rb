class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.string :desc
      t.string :name

      t.timestamps
    end
  end
end
