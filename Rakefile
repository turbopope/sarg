task default: :start_server

desc "Start the webserver"
task :start_server do
  sh "ruby server.rb"
end

desc "Perform a single request"
task :single_request do
  sh "curl http://localhost:4567/random"
end

desc "Perform two requests with 1 second pause"
task :two_requests_with_pause do
  sh "curl http://localhost:4567/random &"
  sleep(1.1) # Sleep a little longer just to be sure
  sh "curl http://localhost:4567/random"
end

desc "Perform two requests without pause"
task :two_requests do
  sh "curl http://localhost:4567/random &"
  sh "curl http://localhost:4567/random"
  sleep(1.1) # Wait for the first request
end
