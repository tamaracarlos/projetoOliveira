class ControlpsController < ApplicationController
  before_action :set_controlp, only: [:show, :edit, :update, :destroy]

  # GET /controlps
  # GET /controlps.json
  def index
    @controlps = Controlp.all
  end

  # GET /controlps/1
  # GET /controlps/1.json
  def show
  end

  # GET /controlps/new
  def new
    @controlp = Controlp.new
  end

  # GET /controlps/1/edit
  def edit
  end

  # POST /controlps
  # POST /controlps.json
  def create
    @controlp = Controlp.new(controlp_params)

    respond_to do |format|
      if @controlp.save
        format.html { redirect_to @controlp, notice: 'Controlp was successfully created.' }
        format.json { render :show, status: :created, location: @controlp }
      else
        format.html { render :new }
        format.json { render json: @controlp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controlps/1
  # PATCH/PUT /controlps/1.json
  def update
    respond_to do |format|
      if @controlp.update(controlp_params)
        format.html { redirect_to @controlp, notice: 'Controlp was successfully updated.' }
        format.json { render :show, status: :ok, location: @controlp }
      else
        format.html { render :edit }
        format.json { render json: @controlp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controlps/1
  # DELETE /controlps/1.json
  def destroy
    @controlp.destroy
    respond_to do |format|
      format.html { redirect_to controlps_url, notice: 'Controlp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controlp
      @controlp = Controlp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controlp_params
      params.require(:controlp).permit(:horarioArmeDesarme, :horarioInterfone, :tempoArmeAutomatico)
    end
end
