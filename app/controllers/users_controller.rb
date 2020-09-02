class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :login]

    def index
        users = User.all
        render json: users
    end
    
    def create
        @user = User.new(user_params)
        if @user.save 
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end
    
    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: token}
        else
            render json: {error: "Invalid username or password"}
        end
    end
    
    def auto_login
        token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: token}
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
    end

    def destroy 
        user = User.find(params[:id]).destroy
    end 

    private
    def user_params
        params.permit(:name, :username, :password, :organization, :location)
    end

end
