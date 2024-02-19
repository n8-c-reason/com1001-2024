# SimpleCov
require "simplecov"
SimpleCov.start do
  add_filter "/spec/"
end
SimpleCov.coverage_dir "coverage"

# Sinatra App
ENV["APP_ENV"] = "test"
require_relative "../app"
def app
  Sinatra::Application
end

# RSpec
require "rack/test"
RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.before do
    Customer.dataset.delete
  end
end
