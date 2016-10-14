class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user
      if user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to my_schedules_path
      else
        flash[:danger] = "Email/Password is incorrect"
        redirect_to root_path
      end
    else
      flash[:danger] = "Email/Password is incorrect"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
