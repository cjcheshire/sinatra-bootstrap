require './app'
use Rack::ShowExceptions
use Rack::Deflater
run DemoApp.new
