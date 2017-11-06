class ItemsController < ApplicationController

  def index
    @items = current_user.items
    @nested_item = true
  end

  def index_all
    @items = Item.all
    @nested_item = false
    render "items/index"
  end

  def show
    @item = current_user.items.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    item = current_user.items.create(item_params)
    show_page = user_item_path(current_user.id, item.id)
    
    redirect_to show_page
  end

  def edit
    @item = current_user.items.find(params[:id])
  end

  def update
    item = current_user.items.find(params[:id])
    item.update(item_params)
    show_page = user_item_path(current_user.id, item.id)
    
    redirect_to show_page
  end


  def destroy
    current_user.items.destroy(params[:id])
    
    redirect_to root_path
  end

  protected
  def item_params
    params.require(:item).permit(:name, :description, :location, :image, :available)
  end
end
