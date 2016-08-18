class AdministradorasController < ApplicationController
  before_action :set_administradora, only: [:show, :edit, :update, :destroy]

  # GET /administradoras
  # GET /administradoras.json
  def index
    @administradoras = Administradora.all
  end

  # GET /administradoras/1
  # GET /administradoras/1.json
  def show
  end

  # GET /administradoras/new
  def new
    @administradora = Administradora.new
  end

  # GET /administradoras/1/edit
  def edit
  end

  # POST /administradoras
  # POST /administradoras.json
  def create
    @administradora = Administradora.new(administradora_params)

    respond_to do |format|
      if @administradora.save
        format.html { redirect_to @administradora, notice: 'Administradora was successfully created.' }
        format.json { render :show, status: :created, location: @administradora }
      else
        format.html { render :new }
        format.json { render json: @administradora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administradoras/1
  # PATCH/PUT /administradoras/1.json
  def update
    respond_to do |format|
      if @administradora.update(administradora_params)
        format.html { redirect_to @administradora, notice: 'Administradora was successfully updated.' }
        format.json { render :show, status: :ok, location: @administradora }
      else
        format.html { render :edit }
        format.json { render json: @administradora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administradoras/1
  # DELETE /administradoras/1.json
  def destroy
    @administradora.destroy
    respond_to do |format|
      format.html { redirect_to administradoras_url, notice: 'Administradora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administradora
      @administradora = Administradora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administradora_params
      params.require(:administradora).permit(:nome, :telefone)
    end
end
