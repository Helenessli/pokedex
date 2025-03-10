require "application_system_test_case"

class PokemonsTest < ApplicationSystemTestCase
  setup do
    @pokemon = pokemons(:one)
  end

  test "visiting the index" do
    visit pokemons_url
    assert_selector "h1", text: "Pokemons"
  end

  test "should create pokemon" do
    visit pokemons_url
    click_on "New pokemon"

    fill_in "Atk", with: @pokemon.atk
    fill_in "Def", with: @pokemon.def
    fill_in "Description", with: @pokemon.description
    fill_in "Height", with: @pokemon.height
    fill_in "Hp", with: @pokemon.hp
    check "Male" if @pokemon.male
    fill_in "Name", with: @pokemon.name
    fill_in "Number", with: @pokemon.number
    fill_in "Spatk", with: @pokemon.spatk
    fill_in "Spd", with: @pokemon.spd
    fill_in "Spdef", with: @pokemon.spdef
    fill_in "Tot", with: @pokemon.tot
    fill_in "Weight", with: @pokemon.weight
    click_on "Create Pokemon"

    assert_text "Pokemon was successfully created"
    click_on "Back"
  end

  test "should update Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Edit this pokemon", match: :first

    fill_in "Atk", with: @pokemon.atk
    fill_in "Def", with: @pokemon.def
    fill_in "Description", with: @pokemon.description
    fill_in "Height", with: @pokemon.height
    fill_in "Hp", with: @pokemon.hp
    check "Male" if @pokemon.male
    fill_in "Name", with: @pokemon.name
    fill_in "Number", with: @pokemon.number
    fill_in "Spatk", with: @pokemon.spatk
    fill_in "Spd", with: @pokemon.spd
    fill_in "Spdef", with: @pokemon.spdef
    fill_in "Tot", with: @pokemon.tot
    fill_in "Weight", with: @pokemon.weight
    click_on "Update Pokemon"

    assert_text "Pokemon was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokemon" do
    visit pokemon_url(@pokemon)
    click_on "Destroy this pokemon", match: :first

    assert_text "Pokemon was successfully destroyed"
  end
end
