AgileMeetings::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  #smtp mail server settings
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'localhost' }
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.default :mime_version => "1.0"
  # config.action_mailer.default :implicit_parts_order => [ "text/html", "text/plain"]
  config.action_mailer.smtp_settings = {
    :address => "mailhub.mckinsey.com",
    :domain =>  "mailhub.mckinsey.com",
    :port => 25
  }

  config.assets.precompile += %w(jquery.js jquery.tablesorter.js script.js style.css jquery-ui-1.8.17.custom.css application.css jquery.min.js jquery-ui.min.js application.js jquery-ui-1.8.17.custom.min.js)
end
