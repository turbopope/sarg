def generate_random_number
  sleep(1)
  return Random.rand(100).to_s
end



last_call = current_time_millis

get "/random" do
  ## Monitor
  time_since_last_call = current_time_millis - last_call
  last_call = current_time_millis

  ## Analyze
  if time_since_last_call < 1000

    ## Plan

    ## Execute
    return 429, "Too Many Requests"

  end

  return generate_random_number
end
