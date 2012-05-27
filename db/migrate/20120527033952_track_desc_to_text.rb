class TrackDescToText < ActiveRecord::Migration
  def up
    change_column :tracks, :desc, :text
  end

  def down
    # little reason to downgrade the column were we to roll back
  end
end
