class Track < ActiveRecord::Base

  belongs_to :tier_1, :class_name => 'Ability', :foreign_key => 'tier_1_id'
  belongs_to :tier_2, :class_name => 'Ability', :foreign_key => 'tier_2_id'
  belongs_to :tier_3, :class_name => 'Ability', :foreign_key => 'tier_3_id'
  belongs_to :tier_4, :class_name => 'Ability', :foreign_key => 'tier_4_id'
  belongs_to :tier_5, :class_name => 'Ability', :foreign_key => 'tier_5_id'
  belongs_to :tier_6, :class_name => 'Ability', :foreign_key => 'tier_6_id'
  belongs_to :tier_7, :class_name => 'Ability', :foreign_key => 'tier_7_id'

  def abilities
    [tier_1, tier_2, tier_3, tier_4, tier_5, tier_6, tier_7]
  end

end
