require 'test_helper'

class ManyAlumnosHasManyAsignaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @many_alumnos_has_many_asignatura = many_alumnos_has_many_asignaturas(:one)
  end

  test "should get index" do
    get many_alumnos_has_many_asignaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_many_alumnos_has_many_asignatura_url
    assert_response :success
  end

  test "should create many_alumnos_has_many_asignatura" do
    assert_difference('ManyAlumnosHasManyAsignatura.count') do
      post many_alumnos_has_many_asignaturas_url, params: { many_alumnos_has_many_asignatura: { alumno_id: @many_alumnos_has_many_asignatura.alumno_id, asignatura_id: @many_alumnos_has_many_asignatura.asignatura_id, nota: @many_alumnos_has_many_asignatura.nota, ponderacion: @many_alumnos_has_many_asignatura.ponderacion } }
    end

    assert_redirected_to many_alumnos_has_many_asignatura_url(ManyAlumnosHasManyAsignatura.last)
  end

  test "should show many_alumnos_has_many_asignatura" do
    get many_alumnos_has_many_asignatura_url(@many_alumnos_has_many_asignatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_many_alumnos_has_many_asignatura_url(@many_alumnos_has_many_asignatura)
    assert_response :success
  end

  test "should update many_alumnos_has_many_asignatura" do
    patch many_alumnos_has_many_asignatura_url(@many_alumnos_has_many_asignatura), params: { many_alumnos_has_many_asignatura: { alumno_id: @many_alumnos_has_many_asignatura.alumno_id, asignatura_id: @many_alumnos_has_many_asignatura.asignatura_id, nota: @many_alumnos_has_many_asignatura.nota, ponderacion: @many_alumnos_has_many_asignatura.ponderacion } }
    assert_redirected_to many_alumnos_has_many_asignatura_url(@many_alumnos_has_many_asignatura)
  end

  test "should destroy many_alumnos_has_many_asignatura" do
    assert_difference('ManyAlumnosHasManyAsignatura.count', -1) do
      delete many_alumnos_has_many_asignatura_url(@many_alumnos_has_many_asignatura)
    end

    assert_redirected_to many_alumnos_has_many_asignaturas_url
  end
end
