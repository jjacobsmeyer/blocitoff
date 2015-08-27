class ItemsController < ApplicationController

  def create
    @user = current_user
    @item = Item.new(item_params)

    if @item.save
      flash[:notice] = "Item was created"
      redirect_to @user
    else
      flash[:error] = "There was an error creating your item"
      redirect_to @user
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    # redirect_to current_user

    respond_to do |format|
      format.html
      format.js
    end


  end


  private

  def item_params
    params.require(:item).permit(:name)
  end

end
