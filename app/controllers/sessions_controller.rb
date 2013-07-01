class SessionsController < ApplicationController

  def new
  end
  
  def create
    @member = Member.where(:email => params[:session][:email]).first
    if @member && @member.authenticate(params[:session][:password])
      session[:member_id] = @member.id
      redirect_to @member, :notice => "Welcome back, #{@member.first_name}"
    else
      redirect_to new_session_path, :notice => "Member does not exist."
    end
  end
  
  def destroy
    session[:member_id] = nil
    redirect_to root_url, :notice => "Member signed out."
  end

end
