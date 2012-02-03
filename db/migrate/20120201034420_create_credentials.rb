class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email
      t.string :nickname

      t.timestamps
    end
  end
end
