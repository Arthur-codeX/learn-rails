class AuthMiddleware

  def initialize(app)
    @app=app
  end

  def call(env)
    status,headers,response=@app.call(env)

   puts "Authorization middleware hit"

   puts env['REQUEST_URI']
   puts env['REQUEST_METHOD']


   if env['HTTP_TOKEN']=="auth"

    #role admin,
    #roel employee Add users,verify
    #verify_jwt_token
    #Role based authentication
    return [status,headers,response]
   end
    # "Next "

  #return [401,{'Content-Type'=>'application/json'},[{'message':'unothorized'}.to_json]]
  return [status,headers,response]
  end

end
