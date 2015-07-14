class Cms::PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cms_page, only: [:show, :edit, :update, :destroy]

  # GET /cms/pages
  # GET /cms/pages.json
  def index
    @cms_pages = Cms::Page.all
  end

  # GET /cms/pages/1
  # GET /cms/pages/1.json
  def show
  end

  # GET /cms/pages/new
  def new
    @cms_page = Cms::Page.new
  end

  # GET /cms/pages/1/edit
  def edit
  end

  # POST /cms/pages
  def create
    @cms_page = Cms::Page.new(cms_page_params)
      if @cms_page.save
        redirect_to action: 'index'
      else
        render :new
      end
  end

  # PATCH/PUT /cms/pages/1
  def update
    if @cms_page.update(cms_page_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  # DELETE /cms/pages/1
  # DELETE /cms/pages/1.json
  def destroy
    @cms_page.destroy
    respond_to do |format|
      format.html { redirect_to cms_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_page
      @cms_page = Cms::Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_page_params
      params.require(:cms_page).permit(:title, :resume, :content, :publish, :thumbnail, :thumbnail_active, :page_category_id)
    end
end
