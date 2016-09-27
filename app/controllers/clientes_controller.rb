class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  before_action :set_cidade, only: [:show, :edit, :update, :destroy, :new]
  before_action :set_administradora, only: [:show, :edit, :update, :destroy, :new]
  before_action :set_contrato, only: [:show, :edit, :update, :destroy, :new]
  before_action :set_dvr, only: [:show, :edit, :update, :destroy, :new]
  before_action :set_internet, only: [:show, :edit, :update, :destroy, :new]

  def index
    @clientes = Cliente.all
  end

  def show
  end

  def new
    @cliente = Cliente.new  
  end

  def edit    
  end

  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    def set_cidade
      @cidades = Cidade.all
    end

    def set_administradora
      @administradoras = Administradora.all
    end

    def set_contrato
      @contratos = Contrato.all
    end

    def set_dvr
      @dvrs = Dvr.all
    end

    def set_internet
      @internets = Internet.all
    end

    def cliente_params
      params.require(:cliente).permit(:nome, :cnpj, :conta, :sindico, :telefone,
                                      :cidade_id, :administradora_id, :contrato_id, :dvr_id, :internet_id)
    
    end
end
