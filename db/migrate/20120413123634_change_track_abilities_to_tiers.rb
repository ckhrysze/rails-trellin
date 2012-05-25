class ChangeTrackAbilitiesToTiers < ActiveRecord::Migration
  def up
    remove_column :abilities, :track_id
    add_column :tracks, :tier_1_id, :int
    add_column :tracks, :tier_2_id, :int
    add_column :tracks, :tier_3_id, :int
    add_column :tracks, :tier_4_id, :int
    add_column :tracks, :tier_5_id, :int
    add_column :tracks, :tier_6_id, :int
    add_column :tracks, :tier_7_id, :int
  end

  def down
    add_column :abilities, :track_id, :int
    remove_column :tracks, :tier_1_id
    remove_column :tracks, :tier_2_id
    remove_column :tracks, :tier_3_id
    remove_column :tracks, :tier_4_id
    remove_column :tracks, :tier_5_id
    remove_column :tracks, :tier_6_id
    remove_column :tracks, :tier_7_id
  end
end
