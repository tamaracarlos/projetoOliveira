class NobreaksController < ApplicationController
  before_action :set_nobreak, only: [:show, :edit, :update, :destroy]

  # GET /nobreaks
  # GET /nobreaks.json
  def index
    @nobreaks = Nobreak.all
  end

  # GET /nobreaks/1
  # GET /nobreaks/1.json
  def show
  end

  # GET /nobreaks/new
  def new
    @nobreak = Nobreak.new
  end

  # GET /nobreaks/1/edit
  def edit
  end

  # POST /nobreaks
  # POST /nobreaks.json
  def create
    @nobreak = Nobreak.new(nobreak_params)

    respond_to do |format|
      if @nobreak.save
        format.html { redirect_to @nobreak, notice: 'Nobreak was successfully created.' }
        format.json { render :show, status: :created, location: @nobreak }
      else
        format.html { render :new }
        format.json { render json: @nobreak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nobreaks/1
  # PATCH/PUT /nobreaks/1.json
  def update
    respond_to do |format|
      if @nobreak.update(nobreak_params)
        format.html { redirect_to @nobreak, notice: 'Nobreak was successfully updated.' }
        format.json { render :show, status: :ok, location: @nobreak }
      else
        format.html { render :edit }
        format.json { render json: @nobreak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nobreaks/1
  # DELETE /nobreaks/1.json
  def destroy
    @nobreak.destroy
    respond_to do |format|
      format.html { redirect_to nobreaks_url, notice: 'Nobreak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nobreak
      @nobreak = Nobreak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nobreak_params
      params.require(:nobreak).permit(:capacidade, :marca, :modelo, :bateria, :capacidadeBateria)
    end
end
