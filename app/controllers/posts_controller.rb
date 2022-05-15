class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find_by({"id" => params["id"]})
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["author"] = params["post"]["author"]
    @post["body"] = params["post"]["body"]
    @post["image"] = params["post"]["image"]
    @post.save

    redirect_to "/posts"
  end

end
