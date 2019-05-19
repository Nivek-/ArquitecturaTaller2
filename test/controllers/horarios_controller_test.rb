require 'test_helper'

class HorariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horario = horarios(:one)
  end

  test "should get index" do
    get horarios_url
    assert_response :success
  end

  test "should get new" do
    get new_horario_url
    assert_response :success
  end

  test "should create horario" do
    assert_difference('Horario.count') do
      post horarios_url, params: { horario: { asignatura_id: @horario.asignatura_id, aula_id: @horario.aula_id, bloque: @horario.bloque, dia_de_la_semana: @horario.dia_de_la_semana } }
    end

    assert_redirected_to horario_url(Horario.last)
  end

  test "should show horario" do
    get horario_url(@horario)
    assert_response :success
  end

  test "should get edit" do
    get edit_horario_url(@horario)
    assert_response :success
  end

  test "should update horario" do
    patch horario_url(@horario), params: { horario: { asignatura_id: @horario.asignatura_id, aula_id: @horario.aula_id, bloque: @horario.bloque, dia_de_la_semana: @horario.dia_de_la_semana } }
    assert_redirected_to horario_url(@horario)
  end

  test "should destroy horario" do
    assert_difference('Horario.count', -1) do
      delete horario_url(@horario)
    end

    assert_redirected_to horarios_url
  end
end
