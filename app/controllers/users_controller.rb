class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :index]

    def index
        @users = User.all
        render json: @users, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
            render json: {error: 'Email is already in use.'}, status: :not_acceptable
        end
    end 

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
    end


    private

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :password)
    end

end
