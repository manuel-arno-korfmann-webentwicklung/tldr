require 'zoom'

Zoom.configure do |c|
  c.api_key = Rails.application.credentials.zoom[:oauth][:app_key]
  c.api_secret = Rails.application.credentials.zoom[:oauth][:app_secret]
end