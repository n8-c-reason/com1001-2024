# Gems
require "logger"
require "require_all"
require "sequel"
require "sinatra"

# So we can escape HTML special characters in the view
include ERB::Util

# Database
mode = ENV.fetch("APP_ENV", "development")
path = File.dirname(__FILE__)
file_minus_ext = "#{path}/#{mode}"

DB = Sequel.sqlite("#{file_minus_ext}.sqlite3",
                   logger: Logger.new("#{file_minus_ext}.log"))

# Require main app files
require_rel "models", "controllers", "helpers"
