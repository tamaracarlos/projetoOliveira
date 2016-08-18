class SindicosController < ApplicationController
  before_action :set_sindico, only: [:show, :edit, :update, :destroy]

  # GET /sindicos
  # GET /sindicos.json
  def index
    @sindicos = Sindico.all
  end

  # GET /sindicos/1
  # GET /sindicos/1.json
  def show
  end

  # GET /sindicos/new
  def new
    @sindico = Sindico.new
  end

  # GET /sindicos/1/edit
  def edit
  end

  # POST /sindicos
  # POST /sindicos.json
  def create
    @sindico = Sindico.new(sindico_params)

    respond_to do |format|
      if @sindico.save
        format.html { redirect_to @sindico, notice: 'Sindico was successfully created.' }
        format.json { render :show, status: :created, location: @sindico }
      else
        format.html { render :new }
        format.json { render json: @sindico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sindicos/1
  # PATCH/PUT /sindicos/1.json
  def update
    respond_to do |format|
      if @sindico.update(sindico_params)
        format.html { redirect_to @sindico, notice: 'Sindico was successfully updated.' }
        format.json { render :show, status: :ok, location: @sindico }
      else
        format.html { render :edit }
        format.json { render json: @sindico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sindicos/1
  # DELETE /sindicos/1.json
  def destroy
    @sindico.destroy
    respond_to do |format|
      format.html { redirect_to sindicos_url, notice: 'Sindico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sindico
      @sindico = Sindico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sindico_params
      params.require(:sindico).permit(:nome, :telefone)
    end
end
