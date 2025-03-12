class HomeController < ApplicationController
  def index
    @pokemons = Pokemon.all.order(:number)
  end
  def about
  end
end
