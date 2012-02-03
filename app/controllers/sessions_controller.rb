class SessionsController < ApplicationController

  skip_before_filter :require_login
  skip_before_filter :require_gm

  def create
    auth_hash = request.env['omniauth.auth']
    logger.warn("auth hash: #{auth_hash}")
    uid = auth_hash[:uid]
    provider = auth_hash[:provider]
    logger.warn("uid: #{uid},  provider: #{provider}")
    credential = Credential.find_by_uid_and_provider(uid, provider)

    if credential.nil?
      logger.warn("credential is nil, creating a new one")
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

  def failure
    logger.warn("Auth failure")
    redirect_to :root
  end

  def logout
    session[:current_user_id] = nil
    redirect_to :root
  end
end
