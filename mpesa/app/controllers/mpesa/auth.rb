require "base64"
require "excon"
require "json"

def access_token
    begin
      consumer_key="mMrjhwQoFaDKbvIC0z2YAqYD9jbi5zNh"
      consumer_secret="GI6BLqV8fs5CraOE"

       enc=Base64.strict_encode64("#{consumer_key}:#{consumer_secret}")

    # puts enc
    url="https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"

    response=Excon.get(url,:headers=>{"Authorization":"Basic #{enc}"})

    # puts response.status
    # puts response.body
    data=JSON.parse(response.body)
    # p data.class
    # p response.body.class
    # p data["access_token"]
    return data["access_token"]
    rescue
      puts" error doing json parse"
      return nil
    end
end

# puts access_token
