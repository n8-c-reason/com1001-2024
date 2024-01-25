require "rspec"
require "rack/test"

require_relative "hello_world"

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

RSpec.describe "Hello World example" do
  describe "GET /hello-world" do
    it "has a status code of 200 (OK)" do
      get "/hello-world"
      expect(last_response.status).to eq(200)
    end

    it "says 'Hello, World!'" do
      get "/hello-world"
      expect(last_response.body).to eq("Hello, World!")
    end
  end
end
