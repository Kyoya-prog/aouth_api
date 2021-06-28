class SignupController < ApplicationController
  skip_before_action :require_login, only: [:create]
  def create
    user = User.new(user_params)
    if user.save
      logger.debug("usersftft")
      logger.debug(user)
      token = Session.create(user)
      status = :created
      render json: { token: token }, status: status
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:email,:password_digest,:deleted_at)
  end
end
