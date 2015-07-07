class Cms::PostCategoriesController < ApplicationController
  before_action :set_cms_post_category, only: [:show, :edit, :update, :destroy]

  # GET /cms/post_categories
  # GET /cms/post_categories.json
  def index
    @cms_post_categories = Cms::PostCategory.all
  end

  # GET /cms/post_categories/1
  # GET /cms/post_categories/1.json
  def show
  end

  # GET /cms/post_categories/new
  def new
    @cms_post_category = Cms::PostCategory.new
  end

  # GET /cms/post_categories/1/edit
  def edit
  end

  # POST /cms/post_categories
  # POST /cms/post_categories.json
  def create
    @cms_post_category = Cms::PostCategory.new(cms_post_category_params)

    respond_to do |format|
      if @cms_post_category.save
        format.html { redirect_to @cms_post_category, notice: 'Post category was successfully created.' }
        format.json { render :show, status: :created, location: @cms_post_category }
      else
        format.html { render :new }
        format.json { render json: @cms_post_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/post_categories/1
  # PATCH/PUT /cms/post_categories/1.json
  def update
    respond_to do |format|
      if @cms_post_category.update(cms_post_category_params)
        format.html { redirect_to @cms_post_category, notice: 'Post category was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_post_category }
      else
        format.html { render :edit }
        format.json { render json: @cms_post_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/post_categories/1
  # DELETE /cms/post_categories/1.json
  def destroy
    @cms_post_category.destroy
    respond_to do |format|
      format.html { redirect_to cms_post_categories_url, notice: 'Post category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_post_category
      @cms_post_category = Cms::PostCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_post_category_params
      params.require(:cms_post_category).permit(:name, :status, :description)
    end
end
