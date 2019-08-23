class HomeController < ApplicationController
  def index
    @post = Post.last
  end
  
  def create 
    Post.create(title: params[:title], image: params[:image]) 
    
    redirect_to "/home/index" 
  end

end
