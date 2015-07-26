module Content
  class PostsController < ApplicationController
    def index
      @post = Post.all
    end

    def show
      @post = Cms::Post.find(params[:id])
    end

  end
end
