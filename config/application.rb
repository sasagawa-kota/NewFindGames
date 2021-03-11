require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewFindGames
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.time_zone = 'Tokyo' #タイムゾーン東京に変更
    config.generators.template_engine = :slim #slimに変更
    
      config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
  end
end
