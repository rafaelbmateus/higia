require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application

    config.to_prepare do 
      # Load stuff not inside models, views, controllers 
      [ "../app/sanitizers/*.rb" ].each do |x| 
        Dir.glob(File.join(File.dirname(__FILE__), x)) do |c| 
          Rails.configuration.cache_classes ? require(c) : load(c) 
        end 
      end
    end

    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:en, :'pt-BR']
    config.i18n.default_locale = :'pt-BR'
    config.time_zone = 'Brasilia'

    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Don't generate system test files.
    config.generators.system_tests = nil;

    # RSpec
    config.generators do |g|
      g.test_framework :rspec,
        fixtures: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false
    end
  end
end
