class ManyAlumnosHasManyAsignaturasController < ApplicationController
  before_action :set_many_alumnos_has_many_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /many_alumnos_has_many_asignaturas
  # GET /many_alumnos_has_many_asignaturas.json
  def index
    @many_alumnos_has_many_asignaturas = ManyAlumnosHasManyAsignatura.all
  end

  # GET /many_alumnos_has_many_asignaturas/1
  # GET /many_alumnos_has_many_asignaturas/1.json
  def show
  end

  # GET /many_alumnos_has_many_asignaturas/new
  def new
    @many_alumnos_has_many_asignatura = ManyAlumnosHasManyAsignatura.new
  end

  # GET /many_alumnos_has_many_asignaturas/1/edit
  def edit
  end

  # POST /many_alumnos_has_many_asignaturas
  # POST /many_alumnos_has_many_asignaturas.json
  def create
    @many_alumnos_has_many_asignatura = ManyAlumnosHasManyAsignatura.new(many_alumnos_has_many_asignatura_params)

    respond_to do |format|
      if @many_alumnos_has_many_asignatura.save
        format.html { redirect_to @many_alumnos_has_many_asignatura, notice: 'Many alumnos has many asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @many_alumnos_has_many_asignatura }
      else
        format.html { render :new }
        format.json { render json: @many_alumnos_has_many_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /many_alumnos_has_many_asignaturas/1
  # PATCH/PUT /many_alumnos_has_many_asignaturas/1.json
  def update
    respond_to do |format|
      if @many_alumnos_has_many_asignatura.update(many_alumnos_has_many_asignatura_params)
        format.html { redirect_to @many_alumnos_has_many_asignatura, notice: 'Many alumnos has many asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @many_alumnos_has_many_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @many_alumnos_has_many_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /many_alumnos_has_many_asignaturas/1
  # DELETE /many_alumnos_has_many_asignaturas/1.json
  def destroy
    @many_alumnos_has_many_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to many_alumnos_has_many_asignaturas_url, notice: 'Many alumnos has many asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_many_alumnos_has_many_asignatura
      @many_alumnos_has_many_asignatura = ManyAlumnosHasManyAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def many_alumnos_has_many_asignatura_params
      params.require(:many_alumnos_has_many_asignatura).permit(:nota, :ponderacion, :alumno_id, :asignatura_id)
    end
end
