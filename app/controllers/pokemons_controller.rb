class PokemonsController < ApplicationController
  include PokemonEvolutionHelper
  before_action :set_pokemon, only: %i[ show edit update destroy ]

  # GET /pokemons or /pokemons.json
  def index
    @pokemons = Pokemon.all
  end

  # GET /pokemons/1 or /pokemons/1.json
  def show
    @pokemon = Pokemon.find(params[:id])
  end

  # GET /pokemons/new
  def new
    @pokemon = Pokemon.new
  end

  # GET /pokemons/1/edit
  def edit
  end

  # POST /pokemons or /pokemons.json
  def create
    @pokemon = Pokemon.new(pokemon_params)

    respond_to do |format|
      if @pokemon.save
        format.html { redirect_to @pokemon, notice: "Pokemon was successfully created." }
        format.json { render :show, status: :created, location: @pokemon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemons/1 or /pokemons/1.json
  def update
    respond_to do |format|
      if @pokemon.update(pokemon_params)
        format.html { redirect_to @pokemon, notice: "Pokemon was successfully updated." }
        format.json { render :show, status: :ok, location: @pokemon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemons/1 or /pokemons/1.json
  def destroy
    @pokemon.destroy!

    respond_to do |format|
      format.html { redirect_to pokemons_path, status: :see_other, notice: "Pokemon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    query = params[:query]
    @pokemons = if query.present?
                  Pokemon.where("name LIKE ? COLLATE NOCASE", "%#{query}%").page(params[:page]).per(12)
    else
                  Pokemon.all.page(params[:page]).per(12)
    end
    render "home/index"
  end

  private
    def set_pokemon
      @pokemon = Pokemon.find(params.expect(:id))
    end

    def pokemon_params
      params.expect(pokemon: [ :name, :number, :male, :description, :hp, :atk, :def, :spatk, :spdef, :spd, :tot, :height, :weight ])
    end
end
