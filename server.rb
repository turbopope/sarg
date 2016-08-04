require 'sinatra'
require 'date'


def generate_random_number
  sleep(1)
  return Random.rand(100).to_s
end

def current_time_millis
  return DateTime.now.strftime('%Q').to_i
end

set :threaded, true

require './sarg.rb'
