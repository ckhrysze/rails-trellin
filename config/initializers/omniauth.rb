Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, "DI387AaCEAdw51CJH0x6g", "uUca7doY9TRPnc8NFban5JPlITSdQM1bOXpkzuGo"
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {access_type: 'online', approval_prompt: ''}
end
