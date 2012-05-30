ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../../eac/config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

unless defined? ENGINE_RAILS_ROOT
  ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
end

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, 'spec/support/**/*.rb')].each {|f| require f }

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  ## config.before(:suite) do
  ##   DatabaseCleaner.strategy = :truncation
  ##   DatabaseCleaner.orm = "mongoid"
  ##   Capybara.javascript_driver = :webkit
  ## end
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{ENGINE_RAILS_ROOT}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  #config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Include Engine routes (needed for Controller specs)
  config.include Eactheme::Engine.routes.url_helpers

end