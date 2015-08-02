class Cms::PriestsController < ApplicationController
  before_action :set_cms_priest, only: [:show, :edit, :update, :destroy]

  # GET /cms/priests
  # GET /cms/priests.json
  def index
    @cms_priests = Cms::Priest.all
  end

  # GET /cms/priests/1
  # GET /cms/priests/1.json
  def show
  end

  # GET /cms/priests/new
  def new
    @cms_priest = Cms::Priest.new
  end

  # GET /cms/priests/1/edit
  def edit
  end

  # POST /cms/priests
  # POST /cms/priests.json
  def create
    @cms_priest = Cms::Priest.new(cms_priest_params)

    respond_to do |format|
      if @cms_priest.save
        format.html { redirect_to @cms_priest, notice: 'Priest was successfully created.' }
        format.json { render :show, status: :created, location: @cms_priest }
      else
        format.html { render :new }
        format.json { render json: @cms_priest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/priests/1
  # PATCH/PUT /cms/priests/1.json
  def update
    respond_to do |format|
      if @cms_priest.update(cms_priest_params)
        format.html { redirect_to @cms_priest, notice: 'Priest was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_priest }
      else
        format.html { render :edit }
        format.json { render json: @cms_priest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/priests/1
  # DELETE /cms/priests/1.json
  def destroy
    @cms_priest.destroy
    respond_to do |format|
      format.html { redirect_to cms_priests_url, notice: 'Priest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_priest
      @cms_priest = Cms::Priest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_priest_params
      params.require(:cms_priest).permit(:who, :publish, :content, :resume, :title, :thumb, :thumb_active)
    end
end
