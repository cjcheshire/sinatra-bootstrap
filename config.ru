require './app'
use Rack::ShowExceptions
use Rack::Deflater
run App.new
