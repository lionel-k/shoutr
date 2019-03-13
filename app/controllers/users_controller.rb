class UsersController < Clearance::UsersController
  def new
    @user = User.new
  end

  def show
    @shouts = current_user.shouts
  end

  private

  def current_user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
