class UsersController < ApplicationController
     before_action :authenticate_user, only: [:show]
    
    def index
        @users = User.all.with_attached_avatar.order(id: :desc)
        if @users
            render json: @users
        else 
            render json: {
                error: 'no users found'
            }, status: 500
        end
    end

    def show
        user = User.find_by(id: params[:id])
         if user
            render json: user
         else
             render json: {status: 500, errors:['no user found']}
         end
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            created_jwt = issue_token({id: @user.id})
            cookies.signed[:jwt] = {value: created_jwt, httponly: true, expires: 1.hour.from_now}
            render json: @user
        else
            render json: {error: "Oops! We encountered an error! Plese try again."}
        end
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user
        elsif user.update(avatar: params[:avatar])
            render json: user
        #avatar_url = rails_blob_path(user.avatar)
        else
            render json: {error: "Oops! We encountered an error! Plese try again."}
        end
    end


    private

    def user_params
        params.require(:user).permit(:email, :name, :title, :bio, :password)
    end

end
