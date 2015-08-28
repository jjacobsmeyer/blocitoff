class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @new_item = Item.new
    @items = @user.items.order(created_at: :desc)


  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
