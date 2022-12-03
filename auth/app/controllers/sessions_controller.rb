class SessionsController < ApplicationController


  @user={name:"samuel",id:1}



  def index
    #index
    #sessions
    #generate a session. manage when session is invalid
    #cookies
    @session_data=session["cool"]

    if cookies[:login]
      return  render "index"
    else
      redirect_to action:"login"
    end


    #puts session_data
    # return  render "index"

  end

  def check
    @session_data=session["cool"]
    @login_cookie=cookies[:login]

    render "check"
  end

  def login
    #login
    # user_id=1

    @sess="Welcome user 1:#{Time.now}"
    @cook={:value=>"1",:expires=>Time.now+20}

    session["cool"]= @sess
    cookies["login"]=@cook
    render "login"
  end


  # def check_session
  # end

end
