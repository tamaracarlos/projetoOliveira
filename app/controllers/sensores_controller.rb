class SensoresController < ApplicationController
  before_action :set_sensore, only: [:show, :edit, :update, :destroy]

  # GET /sensores
  # GET /sensores.json
  def index
    @sensores = Sensore.all
  end

  # GET /sensores/1
  # GET /sensores/1.json
  def show
  end

  # GET /sensores/new
  def new
    @sensore = Sensore.new
  end

  # GET /sensores/1/edit
  def edit
  end

  # POST /sensores
  # POST /sensores.json
  def create
    @sensore = Sensore.new(sensore_params)

    respond_to do |format|
      if @sensore.save
        format.html { redirect_to @sensore, notice: 'Sensore was successfully created.' }
        format.json { render :show, status: :created, location: @sensore }
      else
        format.html { render :new }
        format.json { render json: @sensore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensores/1
  # PATCH/PUT /sensores/1.json
  def update
    respond_to do |format|
      if @sensore.update(sensore_params)
        format.html { redirect_to @sensore, notice: 'Sensore was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensore }
      else
        format.html { render :edit }
        format.json { render json: @sensore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensores/1
  # DELETE /sensores/1.json
  def destroy
    @sensore.destroy
    respond_to do |format|
      format.html { redirect_to sensores_url, notice: 'Sensore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensore
      @sensore = Sensore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensore_params
      params.require(:sensore).permit(:modelos, :marcas, :quantidade, :localizacao)
    end
end
