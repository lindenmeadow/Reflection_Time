class SessionsController < ApplicationController
    def new
    end

    def create  
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path, flash:{notice: "You are now signed in."}
        else
            redirect_to signin_path, flash:{notice: "Invalid credentials. Please try again"}
        end
    end

    def destroy
        session.clear
        redirect_to signin_path, flash:{notice: "You are now signed out."}
    end
    
end