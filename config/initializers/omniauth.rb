OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '235949946591588', 'c4e95b37f7e749844c2386c06c0d9509'
end