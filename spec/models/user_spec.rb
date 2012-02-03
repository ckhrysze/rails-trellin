require 'spec_helper'

describe User do

  describe 'gm?' do
    it 'should be a gm if tagged as such' do
      u = User.new
      u.tag_list = 'gm'
      u.save

      u.should be_a_gm
    end

    it 'should not be a gm if not tagged' do
      User.new.should_not be_a_gm
    end

  end
end
