Rails.application.config.middleware.use OmniAuth::Builder do
  provider :zoom, Rails.application.credentials.zoom[:oauth][:app_key], Rails.application.credentials.zoom[:oauth][:app_secret]
end