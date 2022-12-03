class JwtController < ApplicationController
  skip_before_action :verify_authenticity_token
  @secret="secret_key"

  def login
  #   puts "Sign up hit"
  #   @email=params[:email]
  #   @password=params[:password]
  #   puts @email
  #   puts @password

  #   # check if user exits
  #   #generate a token

  #   # payload,secret_key,algorign
  #   token=JWT.encode({id:1,role:"admin"}, @secret)

  # #  render json:{message:"hello sign up"}

  exp = Time.now.to_i + 10
   exp_payload = { data: {id:1,role:"admin"}, exp: exp }

   token = JWT.encode exp_payload, "hmac_secret", 'HS256'

  render json:{token:token}
  end


  def check
    puts request.headers['token']
    token=request.headers['token']
    begin
      decoded_token = JWT.decode token, "hmac_secret", true, { algorithm: 'HS256' }
      puts decoded_token
      return render json:{decoded_token:decoded_token}
    rescue JWT::ExpiredSignature
      # puts("401 error: token expired")
      # return render status: 401
      # Handle expired token, e.g. logout user or deny access
      render status: 401, json:{"":""}
    end




  end

end
