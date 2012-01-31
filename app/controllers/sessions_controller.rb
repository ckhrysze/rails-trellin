class SessionsController < ApplicationController

  def create
    logger.debug( "Omniauth response: #{request.env['omniauth.auth']}")
  end
end
