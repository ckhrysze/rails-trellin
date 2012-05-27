class AbilityDescToText < ActiveRecord::Migration
  def up
    change_column :abilities, :desc, :text
  end

  def down
    # little reason to downgrade the column were we to roll back
  end
end
