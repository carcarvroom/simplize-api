class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :login]

  def create
    @user = User.new(user_params)
    if @user.save 
      token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token}
    else
      render json: {error: @user.errors.full_messages}
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
    render json: {user: UserSerializer.new(user)}
  end

  def destroy 
    user = User.find(params[:id]).destroy
  end 

  private
  def user_params
    params.permit(:first_name, :last_name, :username, :password, :email, :address, :organization, :location, :position, :profile_img, :description, :age)
  end

end
