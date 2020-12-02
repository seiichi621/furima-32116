class ItemsController < ApplicationController
  before_action :authenticate_user!,  except: [:index, :show]
  

  
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
    @item = Item.find(params[:id])
    
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    if @item.save
      redirect_to item_path
    else
      render :edit
    end
  end

  def show
    @item = Item.new
    @item = Item.find(params[:id])
    
  end

  #def destroy
    #@item = Item.find(params[:id])
    #@item.destroy
    #redirect_to root_path
  #end

  private

  def item_params
    params.require(:item).permit(:name, :image, :describe, :category_id, :condition_id, :delivery_fee_id, :prefecture_id, :datetime_id, :price, :user).merge(user_id: current_user.id)
  end
  

end
