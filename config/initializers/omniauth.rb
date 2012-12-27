OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['458525447538950'], ENV['dccba52e35f292ac0ee578d145c5e7b9']
end
