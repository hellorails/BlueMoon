require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlueMoon
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
    config.assets.paths << Rails.root.join("app", "assets", "fonts")

        #config.eager_load_paths += %W("#{config.root}/lib/chartkick")
    config.paths.add Rails.root.join('lib').to_s, eager_load: true, auto_load: true
    config.paths.add Rails.root.join('lib/chartkick.rb').to_s, eager_load: true, auto_load: true


    # as an example of autoload only config
    #config.paths.add Rails.root.join('domainpack').to_s, autoload: true

    #config.time_zone = 'Kolkata'



    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
