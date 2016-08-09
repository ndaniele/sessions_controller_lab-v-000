class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to 'session/new' #login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end