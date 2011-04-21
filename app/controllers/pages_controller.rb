class PagesController < ApplicationController
  def index
    redirect_to page_path('front')
  end
  
  def show
    @page = Page.where(:slug => params[:id]).first
    render :text => "Aieeee!" if @page == nil
  end
end
