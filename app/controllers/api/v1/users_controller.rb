class Api::V1::UsersController < ApplicationController
  
  before_action :authenticate_user!, only:[:index]
  before_action :set_user, only:[:show]
    
  def index
    case params[:people] when "friends"
      @users = current_user.active_friends
    when "requests"
      @users = current_user.pending_friend_requests_from.map(&:user)
    when "pending"
      @users = current_user.pending_friend_requests_to.map(&:friend)
    else
      @users = User.where.not(id: current_user.id)
    end
    render json: @users, status: :ok
  end


  # def index
  #   users = User.all
  #   render json: users, status: :ok
  # end

  def show
    user = User.find(params[:id])
    render json: user, status: :ok
  end

  # def new
  #   user = User.new
  # end

  # def create
  #   user = User.new user_params
  #   if user.save
  #     render json: { user: user }, status: 201 
  #   else
  #     errors = user.errors.full_messages
  #     render json: {errors: errors}, status: 400
  #   end
  # end

  private

  def set_user
    @user = User.find_by(username: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end