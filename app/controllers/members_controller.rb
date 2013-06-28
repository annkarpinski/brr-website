class MembersController < ApplicationController
  def index
    @members = Member.all
    render :index and return
	end
	
	def show
	  @member = Member.find(params[:id])
	  render :show, :layout => 'home' and return
	end
	
	def new
	  @member = Member.new
	  render :new and return
	end
	
	def create
	  @member = Member.new(params[:id])
	  if @member.save
	    flash[:notice] = 'Member was successfully created.'
	    redirect_to @member and return
	  else
	    render :new and return
	  end
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

