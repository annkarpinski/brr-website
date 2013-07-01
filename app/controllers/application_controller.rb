class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_member
  
  def find_member
    if session[:member_id]
      @member = Member.find(session[:member_id])
    end
  end

end