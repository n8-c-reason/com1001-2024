require "sinatra"

# So we can escape HTML special characters in the view
include ERB::Util

require "require_all"
require_rel "controllers"
