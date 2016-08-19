class DvrsController < ApplicationController
  before_action :set_dvr, only: [:show, :edit, :update, :destroy]

  # GET /dvrs
  # GET /dvrs.json
  def index
    @dvrs = Dvr.all
  end

  # GET /dvrs/1
  # GET /dvrs/1.json
  def show
  end

  # GET /dvrs/new
  def new
    @dvr = Dvr.new
  end

  # GET /dvrs/1/edit
  def edit
  end

  # POST /dvrs
  # POST /dvrs.json
  def create
    @dvr = Dvr.new(dvr_params)

    respond_to do |format|
      if @dvr.save
        format.html { redirect_to @dvr, notice: 'Dvr was successfully created.' }
        format.json { render :show, status: :created, location: @dvr }
      else
        format.html { render :new }
        format.json { render json: @dvr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dvrs/1
  # PATCH/PUT /dvrs/1.json
  def update
    respond_to do |format|
      if @dvr.update(dvr_params)
        format.html { redirect_to @dvr, notice: 'Dvr was successfully updated.' }
        format.json { render :show, status: :ok, location: @dvr }
      else
        format.html { render :edit }
        format.json { render json: @dvr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dvrs/1
  # DELETE /dvrs/1.json
  def destroy
    @dvr.destroy
    respond_to do |format|
      format.html { redirect_to dvrs_url, notice: 'Dvr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dvr
      @dvr = Dvr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dvr_params
      params.require(:dvr).permit(:modelo, :canais, :cameras, :entradas, :saidas)
    end
end
