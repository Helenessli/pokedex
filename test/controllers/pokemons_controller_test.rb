require "test_helper"

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemons(:one)
  end

  test "should get index" do
    get pokemons_url
    assert_response :success
  end

  test "should get new" do
    get new_pokemon_url
    assert_response :success
  end

  test "should create pokemon" do
    assert_difference("Pokemon.count") do
      post pokemons_url, params: { pokemon: { atk: @pokemon.atk, def: @pokemon.def, description: @pokemon.description, height: @pokemon.height, hp: @pokemon.hp, male: @pokemon.male, name: @pokemon.name, number: @pokemon.number, spatk: @pokemon.spatk, spd: @pokemon.spd, spdef: @pokemon.spdef, tot: @pokemon.tot, weight: @pokemon.weight } }
    end

    assert_redirected_to pokemon_url(Pokemon.last)
  end

  test "should show pokemon" do
    get pokemon_url(@pokemon)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokemon_url(@pokemon)
    assert_response :success
  end

  test "should update pokemon" do
    patch pokemon_url(@pokemon), params: { pokemon: { atk: @pokemon.atk, def: @pokemon.def, description: @pokemon.description, height: @pokemon.height, hp: @pokemon.hp, male: @pokemon.male, name: @pokemon.name, number: @pokemon.number, spatk: @pokemon.spatk, spd: @pokemon.spd, spdef: @pokemon.spdef, tot: @pokemon.tot, weight: @pokemon.weight } }
    assert_redirected_to pokemon_url(@pokemon)
  end

  test "should destroy pokemon" do
    assert_difference("Pokemon.count", -1) do
      delete pokemon_url(@pokemon)
    end

    assert_redirected_to pokemons_url
  end
end
