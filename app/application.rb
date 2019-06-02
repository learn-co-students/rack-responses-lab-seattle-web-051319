class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now

###the test suite obviously believes us to be takling to a dog or someone name "Morning"...otherwise this is improperly capitaized and the test is dumb./rant
    if time.hour < 12
      resp.write "Good Morning"
    elsif time.hour > 12
       resp.write "Good Afternoon"

      elsif time.hour > 18
        resp.write "Good Evening"
      end
        resp.finish
  end

end
