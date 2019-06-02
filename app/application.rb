class Application
    
    def call(env)
        resp = Rack::Response.new
        
        resp.write "Morning"
        resp.write "Good Afternoon!"
        resp.finish
    end

end