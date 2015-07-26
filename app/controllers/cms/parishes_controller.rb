class Cms::ParishesController < ApplicationController
  before_action :set_cms_parish, only: [:show, :edit, :update, :destroy]

  # GET /cms/parishes
  # GET /cms/parishes.json
  def index
    @cms_parishes = Cms::Parish.all
  end

  # GET /cms/parishes/1
  # GET /cms/parishes/1.json
  def show
  end

  # GET /cms/parishes/new
  def new
    @cms_parish = Cms::Parish.new
  end

  # GET /cms/parishes/1/edit
  def edit
  end

  # POST /cms/parishes
  # POST /cms/parishes.json
  def create
    @cms_parish = Cms::Parish.new(cms_parish_params)

    if @cms_parish.save
      redirect_to action: :index
    else
      render :new
    end
  end

  # PATCH/PUT /cms/parishes/1
  # PATCH/PUT /cms/parishes/1.json
  def update
    if @cms_parish.update(cms_parish_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  # DELETE /cms/parishes/1
  # DELETE /cms/parishes/1.json
  def destroy
    @cms_parish.destroy
    respond_to do |format|
      format.html { redirect_to cms_parishes_url, notice: 'Parish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_parish
      @cms_parish = Cms::Parish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_parish_params
      params.require(:cms_parish).permit(:name, :phone, :address, :priest, :content, :publish, :thumb, :thumbnail, :thumbnail_active, :resume)
    end
end
