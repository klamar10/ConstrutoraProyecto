class MantenisController < ApplicationController
  before_action :set_manteni, only: [:show, :edit, :update, :destroy]

  # GET /mantenis
  # GET /mantenis.json
  def index
    @mantenis = Manteni.all
  end

  # GET /mantenis/1
  # GET /mantenis/1.json
  def show
  end

  # GET /mantenis/new
  def new
    @manteni = Manteni.new
    @manteni.departamentos.build
  end

  # GET /mantenis/1/edit
  def edit
    @manteni.departamentos.build
  end

  # POST /mantenis
  # POST /mantenis.json
  def create
    @manteni = Manteni.new(manteni_params)

    respond_to do |format|
      if @manteni.save
        format.html { redirect_to @manteni, notice: 'Manteni was successfully created.' }
        format.json { render :show, status: :created, location: @manteni }
      else
        format.html { render :new }
        format.json { render json: @manteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mantenis/1
  # PATCH/PUT /mantenis/1.json
  def update
    respond_to do |format|
      if @manteni.update(manteni_params)
        format.html { redirect_to @manteni, notice: 'Manteni was successfully updated.' }
        format.json { render :show, status: :ok, location: @manteni }
      else
        format.html { render :edit }
        format.json { render json: @manteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mantenis/1
  # DELETE /mantenis/1.json
  def destroy
    @manteni.destroy
    respond_to do |format|
      format.html { redirect_to mantenis_url, notice: 'Manteni was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manteni
      @manteni = Manteni.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manteni_params
      params.require(:manteni).permit(:nombre, :caracteristicas, :areacomun, :pisos, :ubicacion, departamentos_attributes: [:id,
      :piso, :_destroy])
    end
end
