require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backendwebsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
        config.middleware.insert_before 0, Rack::Cors do
          allow do
            origins 'http://localhost:3000/' # Replace with your frontend origin
            resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
          end
        end
    
    
      end
    end

