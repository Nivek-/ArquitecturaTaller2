require "application_system_test_case"

class AulasTest < ApplicationSystemTestCase
  setup do
    @aula = aulas(:one)
  end

  test "visiting the index" do
    visit aulas_url
    assert_selector "h1", text: "Aulas"
  end

  test "creating a Aula" do
    visit aulas_url
    click_on "New Aula"

    fill_in "Edificio", with: @aula.edificio
    fill_in "Numero aula", with: @aula.numero_aula
    click_on "Create Aula"

    assert_text "Aula was successfully created"
    click_on "Back"
  end

  test "updating a Aula" do
    visit aulas_url
    click_on "Edit", match: :first

    fill_in "Edificio", with: @aula.edificio
    fill_in "Numero aula", with: @aula.numero_aula
    click_on "Update Aula"

    assert_text "Aula was successfully updated"
    click_on "Back"
  end

  test "destroying a Aula" do
    visit aulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aula was successfully destroyed"
  end
end
