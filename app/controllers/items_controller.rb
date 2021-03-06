class ItemsController < ApplicationController
  before_action :authenticate_user!,  except: [:index,:show]
  before_action :set_item, only: [:edit, :update, :show, :destroy]

  
  def index
    @items = Item.all.order("created_at DESC")
    
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

  
  def edit
     if @item.order.present? || current_user.id != @item.user_id #current_user.id(7) == @item.user_id 7
#@item.order.present?しょうひんが売れているか確認
#current_user.id != @item.user_id今のユーザーが出品者かどうか確認
      redirect_to root_path
     end
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if current_user.id == @item.user_id
       @item.destroy
      end
       redirect_to root_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :describe, :category_id, :condition_id, :delivery_fee_id, :prefecture_id, :datetime_id, :price, :user).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end



