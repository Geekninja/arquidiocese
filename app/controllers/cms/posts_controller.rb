class Cms::PostsController < ApplicationController
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
  # POST /cms/posts.json
  def create
    @cms_post = Cms::Post.new(cms_post_params)

    respond_to do |format|
      if @cms_post.save
        format.html { redirect_to @cms_post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @cms_post }
      else
        format.html { render :new }
        format.json { render json: @cms_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/posts/1
  # PATCH/PUT /cms/posts/1.json
  def update
    respond_to do |format|
      if @cms_post.update(cms_post_params)
        format.html { redirect_to @cms_post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_post }
      else
        format.html { render :edit }
        format.json { render json: @cms_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/posts/1
  # DELETE /cms/posts/1.json
  def destroy
    @cms_post.destroy
    respond_to do |format|
      format.html { redirect_to cms_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_post
      @cms_post = Cms::Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_post_params
      params.require(:cms_post).permit(:title, :resume, :content, :date, :publish, :slider, :thumb, :thumb_active, :post_category_id)
    end
end
