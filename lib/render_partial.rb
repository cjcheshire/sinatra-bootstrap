# Borrowed from Tanner Burson: http://github.com/tannerburson
# http://github.com/adamstac/sinatra-plugins/blob/master/render_partial.rb

module Sinatra 
  module Helpers
    def partial(page, options={})
      slim page, options.merge!(:layout => false)
    end
  end
end