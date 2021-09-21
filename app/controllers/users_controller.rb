# class UsersController < ApplicationController

#     skip_before_action :authorized, only: [:create, :index]

#     def index
#         @users = User.all
#         render json: @users, status: :accepted
#     end

#     def create
#         @user = User.create(user_params)
#         if @user.valid?
#             @token = encode_token(user_id: @user.id)
#             render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
#         else
#             render json: {error: 'Email is already in use.'}, status: :not_acceptable
#         end
#     end 

#     def show
#         @user = User.find_by(id: params[:id])
#         render json: @user
#     end

#     def destroy
#         @user = User.find_by(id: params[:id])
#         @user.destroy
#     end


#     private

#     def user_params
#         params.require(:user).permit(:email, :first_name, :last_name, :password)
#     end

# end


class UsersController < ApplicationController

    before_action :set_bill

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def create
        @user = @bill.users.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: 'Email is already in use.'}, status: 422
        end
    end 

    def destroy
        @user = User.find_by(id: params[:id])
        @bill = Bill.find(@user.bill_id)
        if @user.destroy
            render json: @bill
        else
            render json: {error: 'User not found.'}, status: 422
        end
    end


    private

    def set_bill
        @bill = Bill.find(params[:bill_slug])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :bill_id)
    end

end
