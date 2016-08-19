class CentralDeAlarmesController < ApplicationController
  before_action :set_central_de_alarme, only: [:show, :edit, :update, :destroy]

  # GET /central_de_alarmes
  # GET /central_de_alarmes.json
  def index
    @central_de_alarmes = CentralDeAlarme.all
  end

  # GET /central_de_alarmes/1
  # GET /central_de_alarmes/1.json
  def show
  end

  # GET /central_de_alarmes/new
  def new
    @central_de_alarme = CentralDeAlarme.new
  end

  # GET /central_de_alarmes/1/edit
  def edit
  end

  # POST /central_de_alarmes
  # POST /central_de_alarmes.json
  def create
    @central_de_alarme = CentralDeAlarme.new(central_de_alarme_params)

    respond_to do |format|
      if @central_de_alarme.save
        format.html { redirect_to @central_de_alarme, notice: 'Central de alarme was successfully created.' }
        format.json { render :show, status: :created, location: @central_de_alarme }
      else
        format.html { render :new }
        format.json { render json: @central_de_alarme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /central_de_alarmes/1
  # PATCH/PUT /central_de_alarmes/1.json
  def update
    respond_to do |format|
      if @central_de_alarme.update(central_de_alarme_params)
        format.html { redirect_to @central_de_alarme, notice: 'Central de alarme was successfully updated.' }
        format.json { render :show, status: :ok, location: @central_de_alarme }
      else
        format.html { render :edit }
        format.json { render json: @central_de_alarme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /central_de_alarmes/1
  # DELETE /central_de_alarmes/1.json
  def destroy
    @central_de_alarme.destroy
    respond_to do |format|
      format.html { redirect_to central_de_alarmes_url, notice: 'Central de alarme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_central_de_alarme
      @central_de_alarme = CentralDeAlarme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def central_de_alarme_params
      params.require(:central_de_alarme).permit(:modelo)
    end
end
