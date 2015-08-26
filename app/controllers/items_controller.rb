class ItemsController < ApplicationController

  def create
    # @user = User.find(params[:user_id])
    # @items = @user.items

    @user = current_user
    @item = Item.new(item_params)
    # @new_item = Item.new

    if @item.save
      flash[:notice] = "Item was created"
      redirect_to @user
    else
      flash[:error] = "There was an error creating your item"
      redirect_to @user
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
