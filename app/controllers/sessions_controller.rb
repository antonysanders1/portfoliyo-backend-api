class SessionsController < ApplicationController

    def create
        @user = User.find_by(email: params[:user][:email])
        # avatar = rails_blob_path(@user.avatar)
        if @user && @user.authenticate(params[:user][:password])
            created_jwt = issue_token({id: @user.id})
            cookies.signed[:jwt] = {value: created_jwt, httponly: true, expires: 1.hour.from_now}
            render json: current_user
        else
            render json: {
                error: 'Oops! Email or Password Incorrect.'
            }, status: 404
        end
    end

    def destroy
        cookies.delete(:jwt)
    end

    def currentUser
        if logged_in?
            render json: current_user
        else
            render json: {error: "No current user"}
        end
    end

end