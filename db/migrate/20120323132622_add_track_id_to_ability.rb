class AddTrackIdToAbility < ActiveRecord::Migration
  def change
    add_column :abilities, :track_id, :int
  end
end
