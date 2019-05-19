require "application_system_test_case"

class ManyAlumnosHasManyAsignaturasTest < ApplicationSystemTestCase
  setup do
    @many_alumnos_has_many_asignatura = many_alumnos_has_many_asignaturas(:one)
  end

  test "visiting the index" do
    visit many_alumnos_has_many_asignaturas_url
    assert_selector "h1", text: "Many Alumnos Has Many Asignaturas"
  end

  test "creating a Many alumnos has many asignatura" do
    visit many_alumnos_has_many_asignaturas_url
    click_on "New Many Alumnos Has Many Asignatura"

    fill_in "Alumno", with: @many_alumnos_has_many_asignatura.alumno_id
    fill_in "Asignatura", with: @many_alumnos_has_many_asignatura.asignatura_id
    fill_in "Nota", with: @many_alumnos_has_many_asignatura.nota
    fill_in "Ponderacion", with: @many_alumnos_has_many_asignatura.ponderacion
    click_on "Create Many alumnos has many asignatura"

    assert_text "Many alumnos has many asignatura was successfully created"
    click_on "Back"
  end

  test "updating a Many alumnos has many asignatura" do
    visit many_alumnos_has_many_asignaturas_url
    click_on "Edit", match: :first

    fill_in "Alumno", with: @many_alumnos_has_many_asignatura.alumno_id
    fill_in "Asignatura", with: @many_alumnos_has_many_asignatura.asignatura_id
    fill_in "Nota", with: @many_alumnos_has_many_asignatura.nota
    fill_in "Ponderacion", with: @many_alumnos_has_many_asignatura.ponderacion
    click_on "Update Many alumnos has many asignatura"

    assert_text "Many alumnos has many asignatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Many alumnos has many asignatura" do
    visit many_alumnos_has_many_asignaturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Many alumnos has many asignatura was successfully destroyed"
  end
end
