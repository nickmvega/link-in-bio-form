class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def form 
    render({ :template => "item_templates/form"})
  end 

  def insert
    item = Item.new
    item.link_url = params[:query_link_url]
    item.link_description = params[:query_link_description]
    item.thumbnail_url = params[:query_thumbnail_url]

    item.save
    
    redirect_to("/")
  end
end
