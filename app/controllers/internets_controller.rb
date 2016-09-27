class InternetsController < ApplicationController
  before_action :set_internet, only: [:show, :edit, :update, :destroy]

  # GET /internets
  # GET /internets.json
  def index
    @internets = Internet.all
  end

  # GET /internets/1
  # GET /internets/1.json
  def show
  end

  # GET /internets/new
  def new
    @internet = Internet.new
  end

  # GET /internets/1/edit
  def edit
  end

  # POST /internets
  # POST /internets.json
  def create
    @internet = Internet.new(internet_params)

    respond_to do |format|
      if @internet.save
        format.html { redirect_to @internet, notice: 'Internet was successfully created.' }
        format.json { render :show, status: :created, location: @internet }
      else
        format.html { render :new }
        format.json { render json: @internet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internets/1
  # PATCH/PUT /internets/1.json
  def update
    respond_to do |format|
      if @internet.update(internet_params)
        format.html { redirect_to @internet, notice: 'Internet was successfully updated.' }
        format.json { render :show, status: :ok, location: @internet }
      else
        format.html { render :edit }
        format.json { render json: @internet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internets/1
  # DELETE /internets/1.json
  def destroy
    @internet.destroy
    respond_to do |format|
      format.html { redirect_to internets_url, notice: 'Internet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internet
      @internet = Internet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def internet_params
      params.require(:internet).permit(:banda, :contrato, :cnpj, :nome)
    end
end
