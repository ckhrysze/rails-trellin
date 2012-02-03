class User < ActiveRecord::Base

  acts_as_taggable

  has_many :credentials

  def name
    credentials.first.name
  end

  def gm?
    tags.detect { |tag| tag.name == 'gm' }
  end

end
