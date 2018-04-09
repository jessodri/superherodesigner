class ItemsController < ApplicationController

    def index
      @items = Item.all
    end

    def new
      @item = Item.new
      @item_types = ItemType.all
    end
  
    def create
      @item = Item.create(params.require(:item).permit(:label, :description, :price, :item_type_id))

      redirect_to items_path
      # item = Item.new
      @item.save
    end

    def edit
      @item = Item.find(params[:id])
    end

    def update
      @item = Item.find(params[:id])
      permitted_columns = params.require(:item).permit(:label, :description)
      @item.update_attributes(permitted_columns)
      redirect_to items_path
    end
  end