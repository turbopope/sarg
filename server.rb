require 'sinatra'
require 'date'


def current_time_millis
  return DateTime.now.strftime('%Q').to_i
end

set :threaded, true

require './sarg.rb'
