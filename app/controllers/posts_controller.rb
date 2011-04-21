class PostsController < ApplicationController
  def create
    @page = Page.where(:slug => params[:page_slug]).first
    @post = @page.posts.build
    @post.body = params[:body]
    @post.save
    current_user.posts << @post
    current_user.save
    redirect_to page_path(@page.slug)
  end
end