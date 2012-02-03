class SessionsController < ApplicationController

  skip_before_filter :require_login

  def create
    auth_hash = request.env['omniauth.auth']
    logger.debug("auth hash: #{auth_hash}")
    uid = auth_hash[:uid]
    provider = auth_hash[:provider]
    logger.debug("uid: #{uid},  provider: #{provider}")
    credential = Credential.find_by_uid_and_provider(uid, provider)

    if credential.nil?
      logger.debug("credential is nil, creating a new one")
      user = User.create!

      credential = Credential.new(:uid => uid, :provider => provider)
      credential.name = auth_hash[:name]
      credential.email = auth_hash[:email]
      credential.nickname = auth_hash[:nickname]
      credential.user = user
      credential.save!
    end

    user = credential.user

    session[:current_user_id] = user.id

    redirect_to user_path(user)
  end

  def logout
    session[:current_user_id] = nil
    redirect_to :root
  end
end
