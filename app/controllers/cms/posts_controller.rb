class Cms::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cms_post, only: [:show, :edit, :update, :destroy]

  # GET /cms/posts
  # GET /cms/posts.json
  def index
    @cms_posts = Cms::Post.all
  end

  # GET /cms/posts/1
  # GET /cms/posts/1.json
  def show
  end

  # GET /cms/posts/new
  def new
    @cms_post = Cms::Post.new
  end

  # GET /cms/posts/1/edit
  def edit
  end

  # POST /cms/posts
  def create
    @cms_post = Cms::Post.new(cms_post_params)
      if @cms_post.save
        redirect_to action: :index
      else
        render :new
      end
  end

  # PATCH/PUT /cms/posts/1
  def update
      if @cms_post.update(cms_post_params)
        redirect_to action: :index
      else
        render :edit
      end
  end

  # DELETE /cms/posts/1
  # DELETE /cms/posts/1.json
  def destroy
    @cms_post.destroy
    redirect_to cms_posts_url, notice: 'Post was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_post
      @cms_post = Cms::Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_post_params
      params.require(:cms_post).permit(:title, :resume, :content, :publish, :slider, :thumb, :thumb_active, :thumbnail, :thumbnail_active, :post_category_id)
    end
end
