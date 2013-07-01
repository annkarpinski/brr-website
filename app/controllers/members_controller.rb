#require 'debugger'
class MembersController < ApplicationController

  before_filter(except: [:home, :new, :create]) do
    if session[:member_id] == nil
      flash[:error] = "You must be logged in to see that page."
      redirect_to new_session_path and return
    end
  end
  
  def index
    @members = Member.all
    render :index and return
  end

  def new
    @member = Member.new
  render :new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      session[:member_id] = @member.id
      flash[:notice] = 'Member was successfully created.'
      redirect_to @member
    else
      flash[:notice] = "Member was not created."
      render :new and return
    end
  end

  def show
    @member = Member.find(params[:id])
    render :show and return
  end

  def blog
  end

  def forum
  end
  
  def races
  end

  def volunteer
  end

  def edit
    @member = Member.find(params[:id])
    render :edit and return
  end

  def update
    @member = Member.find(params[:id])
    if @member.save
      flash[:notice] = 'Member was successfully updated.'
      redirect_to @member and return
    else
      render :edit and return
    end
  end
  
  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_url and return
  end
end

