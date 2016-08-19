class TecladosController < ApplicationController
  before_action :set_teclado, only: [:show, :edit, :update, :destroy]

  # GET /teclados
  # GET /teclados.json
  def index
    @teclados = Teclado.all
  end

  # GET /teclados/1
  # GET /teclados/1.json
  def show
  end

  # GET /teclados/new
  def new
    @teclado = Teclado.new
  end

  # GET /teclados/1/edit
  def edit
  end

  # POST /teclados
  # POST /teclados.json
  def create
    @teclado = Teclado.new(teclado_params)

    respond_to do |format|
      if @teclado.save
        format.html { redirect_to @teclado, notice: 'Teclado was successfully created.' }
        format.json { render :show, status: :created, location: @teclado }
      else
        format.html { render :new }
        format.json { render json: @teclado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teclados/1
  # PATCH/PUT /teclados/1.json
  def update
    respond_to do |format|
      if @teclado.update(teclado_params)
        format.html { redirect_to @teclado, notice: 'Teclado was successfully updated.' }
        format.json { render :show, status: :ok, location: @teclado }
      else
        format.html { render :edit }
        format.json { render json: @teclado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teclados/1
  # DELETE /teclados/1.json
  def destroy
    @teclado.destroy
    respond_to do |format|
      format.html { redirect_to teclados_url, notice: 'Teclado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teclado
      @teclado = Teclado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teclado_params
      params.require(:teclado).permit(:tipo, :quantidade)
    end
end
