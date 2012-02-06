class StaticController < ApplicationController

  skip_before_filter :require_login
  skip_before_filter :require_gm

  def index; end

end
