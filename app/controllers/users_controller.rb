class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    #@items = @user.items.visible_to(current_user)
    @item = Item.new
    @items = Item.all 
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
