class Cms::PageCategoriesController < ApplicationController
  before_action :set_cms_page_category, only: [:show, :edit, :update, :destroy]

  # GET /cms/page_categories
  # GET /cms/page_categories.json
  def index
    @cms_page_categories = Cms::PageCategory.all
  end

  # GET /cms/page_categories/1
  # GET /cms/page_categories/1.json
  def show
  end

  # GET /cms/page_categories/new
  def new
    @cms_page_category = Cms::PageCategory.new
  end

  # GET /cms/page_categories/1/edit
  def edit
  end

  # POST /cms/page_categories
  # POST /cms/page_categories.json
  def create
    @cms_page_category = Cms::PageCategory.new(cms_page_category_params)

    respond_to do |format|
      if @cms_page_category.save
        format.html { redirect_to @cms_page_category, notice: 'Page category was successfully created.' }
        format.json { render :show, status: :created, location: @cms_page_category }
      else
        format.html { render :new }
        format.json { render json: @cms_page_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/page_categories/1
  # PATCH/PUT /cms/page_categories/1.json
  def update
    respond_to do |format|
      if @cms_page_category.update(cms_page_category_params)
        format.html { redirect_to @cms_page_category, notice: 'Page category was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_page_category }
      else
        format.html { render :edit }
        format.json { render json: @cms_page_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/page_categories/1
  # DELETE /cms/page_categories/1.json
  def destroy
    @cms_page_category.destroy
    respond_to do |format|
      format.html { redirect_to cms_page_categories_url, notice: 'Page category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_page_category
      @cms_page_category = Cms::PageCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_page_category_params
      params.require(:cms_page_category).permit(:name, :status, :description)
    end
end
