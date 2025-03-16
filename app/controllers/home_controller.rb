class HomeController < ApplicationController
  def index
    @pokemons = Pokemon.page(params[:page]).per(12)
  end
  def about
  end
end
