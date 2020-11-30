class ItemsController < ApplicationController
  before_action :authenticate_user!, :move_to_index, except: [:index]

  
  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :describe, :category_id, :condition_id, :delivery_fee_id, :prefecture_id, :datetime_id, :price, :user).merge(user_id: current_user.id)
  end

  

end
