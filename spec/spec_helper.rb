require 'environment'
require 'cgi'
require 'minitest/autorun'
require 'minitest/spec'
require 'webmock'

Dir["#{File.join(File.dirname(__FILE__), "support")}/**/*.rb"].each { |f| require f }
