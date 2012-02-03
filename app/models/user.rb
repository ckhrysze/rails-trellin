class User < ActiveRecord::Base

  has_many :credentials

  def name
    credentials.first.name
  end
end
