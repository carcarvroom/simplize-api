class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    
    def new
        user = User.new
    end

    def create 
        byebug
        # user = User.create(user_params)
        # if user.valid?
        #     token = encode_token({user_id: user.id})
        #     render json: {user: UserSerializer.new(user), token: token}
        # else
        #     render json: {error: 'Unable to create user'}
        # end
    end

    # def login
    #     user = User.find_by(name: params[:name])
    #     if user && user.authenticate(params[:password])
    #         # token = encode_token({user_id: user.id})
    #         render json: {user: UserSerializer.new(user), token: token}
    #     else 
    #         render json: {error: 'Incorrect username or password'}
    #     end
    # end

    # def persist
    #     # token = encode_token({user_id: @user.id})
    #     render json: {user: UserSerializer.new(@user), token: token}
    # end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def edit
        user = User.find(params[:id])
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
    end

    # def destroy 
    #     user = User.find(params[:id]).destroy
    # end 

    private
    def user_params
        params.permit(:name, :username, :password, :organization, :location)
    end

end
