class HdsController < ApplicationController
  before_action :set_hd, only: [:show, :edit, :update, :destroy]

  # GET /hds
  # GET /hds.json
  def index
    @hds = Hd.all
  end

  # GET /hds/1
  # GET /hds/1.json
  def show
  end

  # GET /hds/new
  def new
    @hd = Hd.new
  end

  # GET /hds/1/edit
  def edit
  end

  # POST /hds
  # POST /hds.json
  def create
    @hd = Hd.new(hd_params)

    respond_to do |format|
      if @hd.save
        format.html { redirect_to @hd, notice: 'Hd was successfully created.' }
        format.json { render :show, status: :created, location: @hd }
      else
        format.html { render :new }
        format.json { render json: @hd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hds/1
  # PATCH/PUT /hds/1.json
  def update
    respond_to do |format|
      if @hd.update(hd_params)
        format.html { redirect_to @hd, notice: 'Hd was successfully updated.' }
        format.json { render :show, status: :ok, location: @hd }
      else
        format.html { render :edit }
        format.json { render json: @hd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hds/1
  # DELETE /hds/1.json
  def destroy
    @hd.destroy
    respond_to do |format|
      format.html { redirect_to hds_url, notice: 'Hd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hd
      @hd = Hd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hd_params
      params.require(:hd).permit(:capacidade, :tempo_de_gravacao)
    end
end
