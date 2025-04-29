# config/application.rb

require_relative 'boot'

require "rails"

require "logger"  
# 必要なRailsフレームワークを追加
require "active_model/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# BundlerによるGemの読み込み
Bundler.require(*Rails.groups)

module Portfolio
  class Application < Rails::Application
    config.load_defaults 6.1
  end
end